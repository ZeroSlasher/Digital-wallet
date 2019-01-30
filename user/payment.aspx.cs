using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class company_payment : System.Web.UI.Page
{
    public SqlConnection con = new SqlConnection();
    public SqlCommand cmd;
    public SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Digital_wallet_String"].ConnectionString);
        con.Open();
    }
    protected void btndebitPay_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("Select card_no from Debitcard where card_no='" + txtdebitno.Text + "'and cvv='" + txtcvvdebit.Text + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["debitid"] = dr["card_no"];
            dr.Close();

            if ((String)Session["flag"] == "add")
            {
                Response.Redirect("addmoney.aspx");
            }
            else
            {
                Response.Redirect("debit_card.aspx");
            }
        }
        else
        {
            Response.Write("<Script>alert('Invalid Debit card')</Script>");
        }
    } 

    protected void txtcvvdebit_TextChanged(object sender, EventArgs e)
    {

    }
}