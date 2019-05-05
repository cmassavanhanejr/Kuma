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
    public class EmpresaServico : IDisposable
    {
        protected dbKumaEntities _ctx;
        protected readonly DbSet<Empresa> _set;
        #region ItisCodGen
        public EmpresaServico()
        {
            _ctx = new dbKumaEntities();
            _set = _ctx.Set<Empresa>();
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public IQueryable<Empresa> GetAllEmpresas()
        {
            _ctx = new dbKumaEntities();
            return _set;
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public Empresa GetByIdEmpresa(object key)
        {
            return _set.Find(key);
        }
        [DataObjectMethod(DataObjectMethodType.Insert, true)]
        public void InsertEmpresa(Empresa entity)
        {

         
            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public void UpdateEmpresa(Empresa entity)
        {


            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteEmpresa(Empresa entity)
        {


            _set.Remove(GetByIdEmpresa(entity.id)); Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteByIdEmpresa(object key)
        {

            _set.Remove(GetByIdEmpresa(key));
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
