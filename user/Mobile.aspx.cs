using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_Mobile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_next_Click(object sender, EventArgs e)
    {
        Session["mobile"] = txtmobile.Text;
        Response.Redirect("Mobile1.aspx");
    }
}