using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class OtherWebsites_debit_card : System.Web.UI.Page
{
    public SqlConnection con = new SqlConnection();
    public SqlCommand cmd;
    public SqlDataReader dr;
    public DataTable dt = new DataTable();
    int newbalance, balance, amount, cid;
    string date1, pwd;
    int password;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Digital_wallet_String"].ConnectionString);
        con.Open();

        if (!IsPostBack)
        {
            load();
        }

    }
    protected void load()
    {
        lblDate.Text = DateTime.Now.ToString("MMM d,yyyy");
        lbltime.Text = DateTime.Now.ToString("T");
        lblamount.Text = Convert.ToString(Session["totalprice"]);
        cmd = new SqlCommand("Select card_no,holder_name,pwd,balance from  Debitcard where card_no=" + Session["Debitid"] + "", con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lblcnumber.Text = Convert.ToString(dr["card_no"]);
            lblname.Text = Convert.ToString(dr["holder_name"]);
            Session["pwd"] = dr["pwd"].ToString();
            Session["balance"] = dr["balance"];
        }
    }
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        string password = txtpwd.Text;
        pwd = Session["pwd"].ToString();
        digital_wallet d = new digital_wallet();
        if (password == pwd)
        {
            balance = Convert.ToInt32(Session["balance"]);
            amount = Convert.ToInt32(Session["amount"]);

            cid = Convert.ToInt32(Session["cid"]);
            newbalance = balance - amount;
            if (newbalance < 1000)
            {
                Response.Write("<Script>alert('Sorry!There no Sufficient Balance')</Script>");
                Response.Redirect("payment.aspx");
            }
            else
            {
                if ((String)Session["flag"] == "add")
                {
                    d.writedata("Update  Debitcard set balance=balance-" + lblamount.Text + " where card_no='" + Session["Debitid"] + "'");
                    d.writedata("update userdata set walletblnce=walletblnce+" + Session["totalprice"] + " where mob=" + (String)Session["uname"]);
                }
                Session["flag"] = null;
                if (Session["mobile"] != null)
                {
                    d.writedata("update userdata set walletblnce=walletblnce-" + Session["totalprice"] + " where mob=" + (String)Session["uname"]);
                    Session["mobile"] = null;
                    d.writedata("update user_transaction set status='Completed' where tid=" + (String)Session["tid"]);
                }
                else if (Session["dth"] != null)
                {
                    d.writedata("update userdata set walletblnce=walletblnce-" + Session["totalprice"] + " where mob=" + (String)Session["uname"]);
                    Session["dth"] = null;
                    d.writedata("update user_transaction set status='Completed' where tid=" + (String)Session["tid"]);
                }
                else if (Session["datacard"] != null)
                {
                    d.writedata("update userdata set walletblnce=walletblnce-" + Session["totalprice"] + " where mob=" + (String)Session["uname"]);
                    Session["datacard"] = null;
                    d.writedata("update user_transaction set status='Completed' where tid=" + (String)Session["tid"]);
                }
                Server.Transfer("userhome.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('Incorrected Password')</script>");
        }
    }

    protected void btncancel_Click1(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
}