using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Entity.Infrastructure;
using System.Data.Entity;

namespace DAL
{
    public partial class dbSGMSEntities
    {
        
        private AuditTrailFactory auditFactory;
        private List<Audit> auditList = new List<Audit>();
        private List<DbEntityEntry> objectList = new List<DbEntityEntry>();

        public override int  SaveChanges()
        {
            auditList.Clear();
            objectList.Clear();
            auditFactory = new AuditTrailFactory(this);
            
            var entityList = ChangeTracker.Entries().Where(p => p.State == System.Data.Entity.EntityState.Added || p.State == System.Data.Entity.EntityState.Deleted || p.State == System.Data.Entity.EntityState.Modified);
            foreach (var entity in entityList)
            {
                Audit audit = auditFactory.GetAudit(entity);
                bool isValid = true;
                if (entity.State == System.Data.Entity.EntityState.Modified && string.IsNullOrWhiteSpace(audit.NewData) && string.IsNullOrWhiteSpace(audit.OldData))
                {
                    isValid = false;
                }
                if (isValid)
                {
                    auditList.Add(audit);
                    objectList.Add(entity);
                }
            }

            var retVal = base.SaveChanges();
            if (auditList.Count > 0)
            {
                int i = 0;
                foreach (var audit in auditList)
                {
                    if (audit.Actions == AuditActions.I.ToString())
                        audit.TableIdValue = auditFactory.GetKeyValue(objectList[i]);
                    this.Audits.Add(audit);
                    i++;
                }
                
                base.SaveChanges();
            }

            return retVal;
        }
    }
}
