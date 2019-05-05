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
    public class LocalizacaoServico : IDisposable
    {
        protected dbKumaEntities _ctx;
        protected readonly DbSet<Localizacao> _set;
        #region ItisCodGen
        public LocalizacaoServico()
        {
            _ctx = new dbKumaEntities();
            _set = _ctx.Set<Localizacao>();
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public IQueryable<Localizacao> GetAllLocalizacaos()
        {
            _ctx = new dbKumaEntities();
            return _set;
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public Localizacao GetByIdLocalizacao(object key)
        {
            return _set.Find(key);
        }
        [DataObjectMethod(DataObjectMethodType.Insert, true)]
        public void InsertLocalizacao(Localizacao entity)
        {

            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public void UpdateLocalizacao(Localizacao entity)
        {


            _set.AddOrUpdate(entity);
            Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteLocalizacao(Localizacao entity)
        {


            _set.Remove(GetByIdLocalizacao(entity.id)); Commit();
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public void DeleteByIdLocalizacao(object key)
        {

            _set.Remove(GetByIdLocalizacao(key));
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
