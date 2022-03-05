using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OrganicProduct
{
    public partial class commande : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            Object nom = Session["nom"];
            if (nom == null)
                Response.Redirect("authentification.aspx");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        
        protected void Button5_Click(object sender, EventArgs e)
        {
            String lib1 = DropDownList2.Text;
            String lib2 = TextBox4.Text;
            int lib3 = int.Parse(TextBox5.Text);
            float pu;
            float pt;
            t_article art2 = dc.t_article.Single(u => u.libelle == lib1);

            pu = (float)art2.prix_unitaire;
            pt = pu * lib3;

            t_commande cmd = new t_commande();

            cmd.article = lib1;
            cmd.email_client = lib2;
            cmd.qte = lib3;
            cmd.date_commande = DateTime.Now;
            cmd.total = pt;

            dc.t_commande.InsertOnSubmit(cmd);
            dc.SubmitChanges();

            GridView2.DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            int id = int.Parse(TextBox6.Text);
            String lib1 = DropDownList2.Text;
            String lib2 = TextBox4.Text;
            int lib3 = int.Parse(TextBox5.Text);
            float pu;
            float pt;
            t_article art2 = dc.t_article.Single(u => u.libelle == lib1);

            pu = (float)art2.prix_unitaire;
            pt = pu * lib3;
            t_commande cmd = dc.t_commande.Single(u => u.id == id);

            cmd.article = lib1;
            cmd.email_client = lib2;
            cmd.qte = lib3;
            cmd.total = pt;
            dc.SubmitChanges();
            GridView2.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int id = int.Parse(TextBox6.Text);

            t_commande art2 = dc.t_commande.Single(u => u.id == id);

            dc.t_commande.DeleteOnSubmit(art2);
            dc.SubmitChanges();
            GridView2.DataBind();
        }
    }
}