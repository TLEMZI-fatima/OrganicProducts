using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OrganicProduct
{
    public partial class commande_client : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            Object nom = Session["nom"];
            if (nom == null)
                Response.Redirect("authentification.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label3.Text = "Votre commande a été bien enregistrée ";

            String lib1 = DropDownList1.SelectedValue;
            String lib2 = TextBox2.Text;

            int lib3 = int.Parse(TextBox1.Text);

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

        }
    }
}