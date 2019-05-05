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
    public class ArtigoArmazemServico : IDisposable
    {
        protected dbKumaEntities _ctx;
        protected readonly DbSet<ArtigoArmazem> _set;
        #region ItisCodGen
        public ArtigoArmazemServico()
        {
            _ctx = new dbKumaEntities();
            _set = _ctx.Set<ArtigoArmazem>();
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public IQueryable<ArtigoArmazem> GetAllArtigoArmazems()
        {
            _ctx = new dbKumaEntities();
            return _set;
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public ArtigoArmazem GetByIdArtigoArmazem(object key)
        {
            return _set.Find(key);
        }
        [DataObjectMethod(DataObjectMethodType.Insert, true)]
        public void InsertArtigoArmazem(ArtigoArmazem entity)
        {

            if (entity.id is Guid)
            {
                entity.id = Guid.NewGuid();
            }

            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public void UpdateArtigoArmazem(ArtigoArmazem entity)
        {


            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteArtigoArmazem(ArtigoArmazem entity)
        {


            _set.Remove(GetByIdArtigoArmazem(entity.id)); Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteByIdArtigoArmazem(object key)
        {

            _set.Remove(GetByIdArtigoArmazem(key));
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
