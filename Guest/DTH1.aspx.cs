using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_DTH1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void next_Click(object sender, EventArgs e)
    {
        Session["dth"] = TextBox1.Text;
        Response.Redirect("DTH2.aspx");
    }
    protected void prev1_Click(object sender, EventArgs e)
    {
        Response.Redirect("DTH.aspx");
    }
}