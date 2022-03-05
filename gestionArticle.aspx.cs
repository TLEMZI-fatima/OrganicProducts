using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OrganicProduct
{
    public partial class gestionArticle : System.Web.UI.Page
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
            String lib2 = TextBox1.Text;
            Double lib4 = Double.Parse(TextBox3.Text);
            String lib3 = DropDownList1.Text;

            t_article art = new t_article();
            art.libelle = lib2;
            art.prix_unitaire = lib4;
            art.categorie = lib3;

            dc.t_article.InsertOnSubmit(art);
            dc.SubmitChanges();

            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String lib2 = TextBox1.Text;
            int id = int.Parse(TextBox2.Text);
            Double lib4 = Double.Parse(TextBox3.Text);
            String lib3 = DropDownList1.Text;


            t_article art2 = dc.t_article.Single(u => u.id == id);

            art2.libelle = lib2;
            art2.categorie = lib3;
            art2.prix_unitaire = lib4;

            dc.SubmitChanges();
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String lib = TextBox1.Text;


            t_article art3 = dc.t_article.Single(u => u.libelle == lib);
            dc.t_article.DeleteOnSubmit(art3);
            dc.SubmitChanges();
            GridView1.DataBind();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}




    