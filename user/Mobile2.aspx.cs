using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_Mobile2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            digital_wallet d = new digital_wallet();
            d.filldropdownlist("oprtrname", "oprtrname", "moboprtr", "", ddl_country);
        }
    }
    protected void btn_pre_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mobile1.aspx");
    }
    protected void btn_next_Click(object sender, EventArgs e)
    {
        Session["operator"] = ddl_country.SelectedItem.Text;
        Response.Redirect("Mobile3.aspx");
    }
}