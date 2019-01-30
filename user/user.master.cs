using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_Guest : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            digital_wallet d = new digital_wallet();
            d.readdata("select walletblnce from userdata where mob=" + (String)Session["uname"]);
            if (d.dr.Read())
            {
                int amt = Convert.ToInt32(d.dr["walletblnce"].ToString());

                lbtnwallet.Text = "ADD WALLET AMOUNT";


                lblwalletbalance.Text = d.dr["walletblnce"].ToString() + " /-";
            }
        }
    }
    protected void lbtnwallet_Click(object sender, EventArgs e)
    {
        Session["flag"] = "add";
        Response.Redirect("payment.aspx");
    }
}
