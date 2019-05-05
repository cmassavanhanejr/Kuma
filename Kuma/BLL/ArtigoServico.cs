using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.ComponentModel;

namespace BLL
{
    [DataObject(true)]
    public class ArtigoServico : IDisposable
    {
        protected dbKumaEntities _ctx;
        protected readonly DbSet<Artigo> _set;
        #region ItisCodGen
        public ArtigoServico()
        {
            _ctx = new dbKumaEntities();
            _set = _ctx.Set<Artigo>();
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public IQueryable<Artigo> GetAllArtigos()
        {
            _ctx = new dbKumaEntities();
            return _set;
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public IQueryable<Artigo> GetAllEmpresaArtigos()
        {
            _ctx = new dbKumaEntities();
            return _set.Where(e => e.idEmpresa == User.empresa.id);
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public Artigo GetByIdArtigo(object key)
        {
            return _set.Find(key);
        }
        [DataObjectMethod(DataObjectMethodType.Insert, true)]
        public void InsertArtigo(Artigo entity)
        {

            entity.createOn = DateTime.Now;
            entity.createBy = BLL.User.idLoggedUser;
            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public void UpdateArtigo(Artigo entity)
        {


            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteArtigo(Artigo entity)
        {


            _set.Remove(GetByIdArtigo(entity.id)); Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteByIdArtigo(object key)
        {

            _set.Remove(GetByIdArtigo(key));
            Commit();
        }
        public void Commit()
        {
            _ctx.SaveChanges();
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (_ctx != null)
                {
                    _ctx.Dispose();
                    _ctx = null;
                }
            }
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public IQueryable<Artigo> GetArtigoById(Guid id)
        {
            _ctx = new dbKumaEntities();
            return _set.Where(a=>a.id==id);
        }
        #endregion
        #region CustomCod
        public List<dynamic> getAllItems(string staff)
        {
            dbKumaEntities dbctx = new dbKumaEntities();
            List<dynamic> inativos = new List<dynamic>();
            foreach (Artigo ex in dbctx.Artigoes.Where(c => c.removeOn == null))
            {
                dynamic inativo = new System.Dynamic.ExpandoObject();

                inativo.id = ex.id;
                inativo.designacao = ex.designacao;
                inativo.descricao = ex.descricao;
                inativo.categoria = ex.Categoria.designacao;
                inativo.localizacao = ex.Localizacao.designacao;
                /*inativo.contato = ex.contato;
                inativo.endereco = ex.endereco;
                inativo.email = ex.email;
                inativo.creditos = ex.Creditoes.Count;
                inativo.cod = ex.cod;
                inativo.status = "hidden";
                inativos.Add(inativo);*/
            }

            return inativos;
        }
        public List<dynamic> getAllLostItems(string staff)
        {
            ArtigoServico dbctx = new ArtigoServico();
            List<dynamic> inativos = new List<dynamic>();
            foreach (Artigo ex in dbctx.GetAllArtigos().Where(c => c.removeOn == null && c.perdidoEm != null).OrderByDescending(d => d.perdidoEm))
            {
                dynamic inativo = new System.Dynamic.ExpandoObject();

                inativo.id = ex.id;
                inativo.cod = ex.referencia;
                inativo.designacao = ex.designacao;
                inativo.descricao = ex.descricao;
                //  inativo.categoria = ex.Categoria.designacao;
                inativo.localizacao = ex.Localizacao.designacao;
                inativo.data = ex.createOn.Value.ToShortDateString();
                inativos.Add(inativo);
            }

            return inativos;
        }
        public List<dynamic> getLostDetailsById(Guid id)
        {
            ArtigoServico dbctx = new ArtigoServico();
            List<dynamic> inativos = new List<dynamic>();
            foreach (Artigo ex in dbctx.GetAllArtigos().Where(c => c.id == id && c.removeOn == null && c.perdidoEm != null))
            {
                dynamic inativo = new System.Dynamic.ExpandoObject();

                inativo.id = ex.id;
                inativo.cod = ex.referencia;
                inativo.designacao = ex.designacao;
                inativo.descricao = ex.descricao;
                //  inativo.categoria = ex.Categoria.designacao;
                inativo.localizacao = ex.Localizacao.designacao;
                inativo.data = ex.createOn.Value.ToShortDateString();
                inativos.Add(inativo);

                //proprietario
                if (ex.ArtigoPessoas.Count >0)
                {
                    inativo.ownerName = ex.ArtigoPessoas.FirstOrDefault().Pessoa.nome;
                    inativo.ownerEmail = ex.ArtigoPessoas.FirstOrDefault().Pessoa.email1;
                    inativo.contacto = ex.ArtigoPessoas.FirstOrDefault().Pessoa.tel1;
                }
            }

            return inativos;
        }
        #endregion
    }
}
