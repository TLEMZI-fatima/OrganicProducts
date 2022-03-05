using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OrganicProduct
{
    public partial class gestionCatégorie : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        Object nom = Session["nom"];
        if (nom == null)
            Response.Redirect("authentification.aspx");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String libe = TextBox1.Text;


        t_categorie cat = new t_categorie();

        cat.libelle = libe;

        dc.t_categorie.InsertOnSubmit(cat);
        dc.SubmitChanges();

        GridView2.DataSource = dc.t_categorie.ToList();
        GridView2.DataBind();
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        int lib2 = int.Parse(TextBox1.Text);
        t_categorie cat2 = dc.t_categorie.Single(u => u.id == lib2);

        cat2.libelle = TextBox1.Text;

        dc.SubmitChanges();

        GridView2.DataSource = dc.t_categorie.ToList();
        GridView2.DataBind();


    }



    protected void Button4_Click(object sender, EventArgs e)
    {

        String lib = TextBox1.Text;


        t_categorie cat3 = dc.t_categorie.Single(u => u.libelle == lib);
        dc.t_categorie.DeleteOnSubmit(cat3);
        dc.SubmitChanges();
        GridView2.DataSource = dc.t_categorie.ToList();
        GridView2.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView2.DataSource = dc.t_categorie.ToList();
        GridView2.DataBind();
    }
        
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
































