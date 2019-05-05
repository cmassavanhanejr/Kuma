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
    public class PessoaServico : IDisposable
    {
        protected dbKumaEntities _ctx;
        protected readonly DbSet<Pessoa> _set;
        #region ItisCodGen
        public PessoaServico()
        {
            _ctx = new dbKumaEntities();
            _set = _ctx.Set<Pessoa>();
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public IQueryable<Pessoa> GetAllPessoas()
        {
            _ctx = new dbKumaEntities();
            return _set;
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public Pessoa GetByIdPessoa(object key)
        {
            return _set.Find(key);
        }
        [DataObjectMethod(DataObjectMethodType.Insert, true)]
        public void InsertPessoa(Pessoa entity)
        {


            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public void UpdatePessoa(Pessoa entity)
        {


            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeletePessoa(Pessoa entity)
        {


            _set.Remove(GetByIdPessoa(entity.id)); Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteByIdPessoa(object key)
        {

            _set.Remove(GetByIdPessoa(key));
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
        #endregion
        #region CustomCod
        #endregion
    }
}
