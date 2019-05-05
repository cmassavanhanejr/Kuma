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
    public class CategoriaServico : IDisposable
    {
        protected dbKumaEntities _ctx;
        protected readonly DbSet<Categoria> _set;
        #region ItisCodGen
        public CategoriaServico()
        {
            _ctx = new dbKumaEntities();
            _set = _ctx.Set<Categoria>();
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public IQueryable<Categoria> GetAllCategorias()
        {
            _ctx = new dbKumaEntities();
            return _set;
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public Categoria GetByIdCategoria(object key)
        {
            return _set.Find(key);
        }
        [DataObjectMethod(DataObjectMethodType.Insert, true)]
        public void InsertCategoria(Categoria entity)
        {
            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public void UpdateCategoria(Categoria entity)
        {


            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteCategoria(Categoria entity)
        {


            _set.Remove(GetByIdCategoria(entity.id)); Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteByIdCategoria(object key)
        {

            _set.Remove(GetByIdCategoria(key));
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
