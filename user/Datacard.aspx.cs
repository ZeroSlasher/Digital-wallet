﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_Datacard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btnnxt2_Click(object sender, EventArgs e)
    {
        Session["operator"] = DropDownList1.SelectedItem.Text;
        Response.Redirect("datacard1.aspx");
    }
}