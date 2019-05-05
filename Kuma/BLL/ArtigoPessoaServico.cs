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
    public class ArtigoPessoaServico : IDisposable
    {
        protected dbKumaEntities _ctx;
        protected readonly DbSet<ArtigoPessoa> _set;
        #region ItisCodGen
        public ArtigoPessoaServico()
        {
            _ctx = new dbKumaEntities();
            _set = _ctx.Set<ArtigoPessoa>();
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public IQueryable<ArtigoPessoa> GetAllArtigoPessoas()
        {
            _ctx = new dbKumaEntities();
            return _set;
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public ArtigoPessoa GetByIdArtigoPessoa(object key)
        {
            return _set.Find(key);
        }
        [DataObjectMethod(DataObjectMethodType.Insert, true)]
        public void InsertArtigoPessoa(ArtigoPessoa entity)
        {

     
            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public void UpdateArtigoPessoa(ArtigoPessoa entity)
        {


            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteArtigoPessoa(ArtigoPessoa entity)
        {


            _set.Remove(GetByIdArtigoPessoa(entity.id)); Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteByIdArtigoPessoa(object key)
        {

            _set.Remove(GetByIdArtigoPessoa(key));
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
