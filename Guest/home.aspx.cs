using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_home : System.Web.UI.Page
{
    protected void Page_load(object sender, EventArgs e)
    {

    }
    protected void signin_click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Hai')</script>");
    }
     
}