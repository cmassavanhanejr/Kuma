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
    public class TipoPessoaServico : IDisposable
    {
        protected dbKumaEntities _ctx;
        protected readonly DbSet<TipoPessoa> _set;
        #region ItisCodGen
        public TipoPessoaServico()
        {
            _ctx = new dbKumaEntities();
            _set = _ctx.Set<TipoPessoa>();
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public IQueryable<TipoPessoa> GetAllTipoPessoas()
        {
            _ctx = new dbKumaEntities();
            return _set;
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public TipoPessoa GetByIdTipoPessoa(object key)
        {
            return _set.Find(key);
        }
        [DataObjectMethod(DataObjectMethodType.Insert, true)]
        public void InsertTipoPessoa(TipoPessoa entity)
        {

    
            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public void UpdateTipoPessoa(TipoPessoa entity)
        {


            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteTipoPessoa(TipoPessoa entity)
        {


            _set.Remove(GetByIdTipoPessoa(entity.id)); Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteByIdTipoPessoa(object key)
        {

            _set.Remove(GetByIdTipoPessoa(key));
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
