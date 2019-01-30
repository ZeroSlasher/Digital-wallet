using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_DTH2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void prev_Click(object sender, EventArgs e)
    {
        Response.Redirect("DTH1.aspx");
    }
    protected void finish_Click(object sender, EventArgs e)
    {
        Session["flag"] = "dth";
        Session["amount"] = txtamt.Text;
        Response.Redirect("dth_details.aspx");
    }
}