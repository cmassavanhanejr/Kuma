using System;
using DAL;
using System.Web;
using Microsoft.AspNet.Identity;

namespace BLL
{
    public class User
    {
        public static Guid idLoggedUser
        {
            get
            {
                return Guid.Parse(HttpContext.Current.User.Identity.GetUserId());
            }
        }
        public static Empresa empresa
        {

            get
            {
                dbKumaEntities dbx = new dbKumaEntities();
                if (dbx.AspNetUsers.Find(HttpContext.Current.User.Identity.GetUserId()).idEmpresa != null)
                {
                    return dbx.AspNetUsers.Find(HttpContext.Current.User.Identity.GetUserId()).Empresa;
                }
                else
                {
                    return null;

                }
            }
        }
        public static bool userDataView
        {

            get
            {
                dbKumaEntities dbx = new dbKumaEntities();
                if (HttpContext.Current.User.IsInRole("administrator"))
                    return HttpContext.Current.User.IsInRole("administrator");
                else
                    return false;
            }
        }
    }
}
