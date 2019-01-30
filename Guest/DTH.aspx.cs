using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_DTH : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            digital_wallet d = new digital_wallet();
            d.filldropdownlist("dthoprtr", "dthoprtr", "dthoperator", "", DropDownList1);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["operator"] = DropDownList1.SelectedItem.Text;
        Response.Redirect("DTH1.aspx");
    }
}