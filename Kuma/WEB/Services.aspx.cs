using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
using Newtonsoft.Json;

namespace WEB
{
    public partial class Services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        #region items
        [WebMethod]
        public static string getItems(string staff)
        {

            ArtigoServico artigo = new ArtigoServico();
            string output = JsonConvert.SerializeObject(artigo.getAllItems(staff));
            return output;
        }

        [WebMethod]
        public static string getAllLostItems(string staff)
        {

            ArtigoServico artigo = new ArtigoServico();
            string output = JsonConvert.SerializeObject(artigo.getAllLostItems(staff));
            return output;
        }
        [WebMethod]
        public static string getLostDetailsById(string id)
        {

            ArtigoServico artigo = new ArtigoServico();
            Guid _id = Guid.Parse(id);
            string output = JsonConvert.SerializeObject(artigo.getLostDetailsById(_id));
            return output;
        }
        [WebMethod]
        public static string addNewItem(string id, string typeItem, string locationItem, string date, string firtname, string lastname, string email, string contact, string outrosDetalhesLost)
        {

            dbKumaEntities dbctx = new dbKumaEntities();
            Artigo artigo = new Artigo();
            Pessoa pessoa = new Pessoa();
            ArtigoPessoa apessoa = new ArtigoPessoa();

            if (id != string.Empty)
            {
                using (var transaction = dbctx.Database.BeginTransaction())
                {
                    try
                    {

                        pessoa.nome = firtname + " " + lastname;
                        pessoa.tel1 = contact;
                        pessoa.email1 = email;
                        pessoa.createOn = DateTime.Now;
                        pessoa.createBy = BLL.User.idLoggedUser;
                        if (BLL.User.empresa != null) pessoa.idEmpresa = BLL.User.empresa.id;
                        pessoa.id = Guid.NewGuid();

                        dbctx.Pessoas.Add(pessoa);
                        dbctx.SaveChanges();

                        artigo.designacao = typeItem;
                        artigo.descricao = outrosDetalhesLost;
                        //artigo.idLocalizacao = int.Parse(locationItem);
                        if (BLL.User.empresa != null) artigo.idEmpresa = BLL.User.empresa.id;
                        if (id == "0") artigo.perdidoEm = DateTime.Parse(date);
                        if (id == "1") artigo.achadoEm = DateTime.Parse(date);
                        artigo.createOn = DateTime.Now;
                        artigo.createBy = BLL.User.idLoggedUser;
                        artigo.id = Guid.NewGuid();

                        dbctx.Artigoes.Add(artigo);
                        dbctx.SaveChanges();

                        apessoa.id = Guid.NewGuid();
                        apessoa.idArtigo = artigo.id;
                        apessoa.idPessoa = pessoa.id;
                        apessoa.createdOn = DateTime.Now;
                        apessoa.createBy = BLL.User.idLoggedUser;

                        dbctx.ArtigoPessoas.Add(apessoa);
                        dbctx.SaveChanges();

                        transaction.Commit();
                    }
                    catch (Exception e)
                    {
                        transaction.Rollback();
                    }
                }


            }
            else
            {
                return "-1";
            }
            return "1";
        }
        #endregion items
    }
}