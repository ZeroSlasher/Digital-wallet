using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_Datacard2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnprev1_Click(object sender, EventArgs e)
    {
        Response.Redirect("datacard1.aspx");
    }
    protected void btnfnsh1_Click(object sender, EventArgs e)
    {
        Session["flag"] = "datacard";
        Session["amount"] = Txtpay.Text;
        Response.Redirect("login.aspx");
    }
}