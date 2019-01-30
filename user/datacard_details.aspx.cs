using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_mob_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = (String)Session["datacard"];
        TextBox2.Text = (String)Session["amount"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        digital_wallet d = new digital_wallet();
        d.readdata("select walletblnce from userdata where mob=" + (String)Session["uname"]);
        if (d.dr.Read())
        {
            int amt = Convert.ToInt32(d.dr["walletblnce"].ToString());

            int ramt = Convert.ToInt32(TextBox2.Text);
            if (ramt < amt)
            {
                d.writedata("insert into user_transaction values('" + (String)Session["uname"] + "','DATACARD'," + TextBox1.Text + ",'" + (String)Session["operator"] + "'," + TextBox2.Text + ",'" + System.DateTime.Now.ToShortDateString() + "','Pending')");
                d.readdata("select max(tid) from user_transaction");
                if (d.dr.Read())
                {
                    Session["tid"] = d.dr.GetValue(0).ToString();
                }
                Session["totalprice"] = TextBox2.Text;


                d.writedata("update userdata set walletblnce=walletblnce-" + Session["totalprice"] + " where mob=" + (String)Session["uname"]);
                Session["dth"] = null;
                d.writedata("update user_transaction set status='Completed' where tid=" + (String)Session["tid"]);
                Response.Write("<script>alert('DataCard Recharge Completed Successfully')</script>");
                Server.Transfer("userhome.aspx");
            }
            else
            {
                d.writedata("insert into user_transaction values('" + (String)Session["uname"] + "','DATACARD'," + TextBox1.Text + ",'" + (String)Session["operator"] + "'," + TextBox2.Text + ",'" + System.DateTime.Now.ToShortDateString() + "','Pending')");
                d.readdata("select max(tid) from user_transaction");
                if (d.dr.Read())
                {
                    Session["tid"] = d.dr.GetValue(0).ToString();
                }
                Session["totalprice"] = TextBox2.Text;

                Response.Write("<script>alert('Insufficient Wallet Balance... Please Add Amount')</script>");
                Session["flag"] = "add";
                Server.Transfer("payment.aspx");
            }
        }
        else
        {
            d.writedata("insert into user_transaction values('" + (String)Session["uname"] + "','DATACARD'," + TextBox1.Text + ",'" + (String)Session["operator"] + "'," + TextBox2.Text + ",'" + System.DateTime.Now.ToShortDateString() + "','Pending')");
            d.readdata("select max(tid) from user_transaction");
            if (d.dr.Read())
            {
                Session["tid"] = d.dr.GetValue(0).ToString();
            }
            Session["totalprice"] = TextBox2.Text;

            Session["flag"] = "add";
            Response.Redirect("payment.aspx");
        }
    }
}