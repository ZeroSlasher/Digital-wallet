using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_Datacard1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnprev2_Click(object sender, EventArgs e)
    {
        Response.Redirect("datacard.aspx");
    }
    protected void btnnxt1_Click(object sender, EventArgs e)
    {
        Session["datacard"] = TextBox1.Text;
        Response.Redirect("datacard2.aspx");
    }
}