using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OrganicProduct
{
    public partial class authentification : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            e.Authenticated = authenticate(Login1.UserName, Login1.Password);
        }

        private bool authenticate(object userName, object password)
        {
            Session["nom"] = userName;

            t_user user = dc.t_user.Where(u => u.username.Equals(userName) && u.pwd.Equals(password)).FirstOrDefault();
            return user != null;
        }
    }
}