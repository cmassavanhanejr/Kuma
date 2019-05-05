using System;
                                using System.Collections.Generic;
                                using System.Linq;
                                using System.Text;
                                using System.Threading.Tasks;
                                using DAL;
                                using System.Data.Entity;
                                using System.Data.Entity.Migrations;
                                using System.ComponentModel;
using DAL;

namespace BLL
{
    [DataObject(true)]
   public  class DoadoServico: IDisposable
{
protected dbKumaEntities _ctx;
protected readonly DbSet<Doado> _set;
#region ItisCodGen
 public DoadoServico(){
  _ctx = new dbKumaEntities();
 _set = _ctx.Set<Doado>();}
[DataObjectMethod(DataObjectMethodType.Select,true)]
       public  IQueryable<Doado>GetAllDoados()
{
_ctx = new dbKumaEntities();
return _set;
}
[DataObjectMethod(DataObjectMethodType.Select,true)]
       public  Doado GetByIdDoado(object key)
{
return _set.Find(key);
}
[DataObjectMethod(DataObjectMethodType.Insert, true)]
        public  void InsertDoado(Doado entity)
{
 
            if ( entity.id is Guid) {
                entity.id = Guid.NewGuid();
            }
            
            _set.AddOrUpdate(entity);
            Commit();
}
[DataObjectMethod(DataObjectMethodType.Update, true)]
        public  void UpdateDoado(Doado entity)
{
 
           
            _set.AddOrUpdate(entity);
            Commit();
}
[DataObjectMethod(DataObjectMethodType.Delete, true)]
        public  void DeleteDoado(Doado entity)
{
 
           
           _set.Remove(GetByIdDoado(entity.id)); Commit();
}
[DataObjectMethod(DataObjectMethodType.Delete, true)]
        public  void DeleteByIdDoado( object key)
{
 
           _set.Remove(GetByIdDoado(key)); 
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
