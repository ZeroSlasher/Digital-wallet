using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_Mobile1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_pre_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mobile.aspx");
    }
    protected void btn_next_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mobile2.aspx");
    }
}