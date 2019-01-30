using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adminhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            digital_wallet d = new digital_wallet();
            d.fillgrid("select * from user_transaction where uname='" + (String)Session["uname"] + "'", GridView1);
        }
    }
}