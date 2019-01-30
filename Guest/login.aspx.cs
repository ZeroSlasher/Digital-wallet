using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_signin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        digital_wallet obj = new digital_wallet();
        obj.readdata("select * from login where uname='" + txtuname.Text + "'and pwd='" + txtpwd.Text + "'");
        if (obj.dr.Read())
        {
            Session["uname"] = txtuname.Text;
            string utype = obj.dr["utype"].ToString();
            if (utype == "admin")
            {
                Response.Redirect("~/admin/adminhome.aspx");
            }
            else if (utype == "user")
            {
                if ((String)Session["flag"] == "mobile")
                {
                    Response.Redirect("~/user/mob_details.aspx");
                } 
                else if ((String)Session["flag"] == "dth")
                {
                    Response.Redirect("~/user/dth_details.aspx");
                }
                else if ((String)Session["flag"] == "datacard")
                {
                    Response.Redirect("~/user/datacard_details.aspx");
                }
                else
                {
                    Response.Redirect("~/user/userhome.aspx");
                }
            }
        }
        else
        {
            Response.Write(obj.messagebox("Unauthorised Entry!!! Access Forbidden"));
        }
    }
}