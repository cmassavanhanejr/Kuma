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
    public class ArmazemServico : IDisposable
    {
        protected dbKumaEntities _ctx;
        protected readonly DbSet<Armazem> _set;
        #region ItisCodGen
        public ArmazemServico()
        {
            _ctx = new dbKumaEntities();
            _set = _ctx.Set<Armazem>();
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public IQueryable<Armazem> GetAllArmazems()
        {
            _ctx = new dbKumaEntities();
            return _set;
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public Armazem GetByIdArmazem(object key)
        {
            return _set.Find(key);
        }
        [DataObjectMethod(DataObjectMethodType.Insert, true)]
        public void InsertArmazem(Armazem entity)
        {

            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public void UpdateArmazem(Armazem entity)
        {


            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteArmazem(Armazem entity)
        {


            _set.Remove(GetByIdArmazem(entity.id)); Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteByIdArmazem(object key)
        {

            _set.Remove(GetByIdArmazem(key));
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
