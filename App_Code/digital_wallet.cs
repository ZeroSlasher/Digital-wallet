using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for digital_wallet
/// </summary>
public class digital_wallet
{
    public SqlConnection con = new SqlConnection();
    public SqlCommand cmd;
    public SqlDataReader dr;
    public SqlDataAdapter ad = new SqlDataAdapter();
    public DataTable dt = new DataTable();
    public void dbconnection()
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.ConnectionString = ConfigurationManager.ConnectionStrings["Digital_wallet_String"].ConnectionString;
        con.Open();
    }
    public void readdata(string sql)
    {
        dbconnection();
        cmd = new SqlCommand(sql, con);
        dr = cmd.ExecuteReader();

    }
    public void writedata(String sql)
    {
        dbconnection();
        cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();

    }
    public void adapter(string sql)
    {
        dbconnection();
        dt.Rows.Clear();
        cmd = new SqlCommand(sql, con);
        ad.SelectCommand = cmd;
        ad.Fill(dt);
            }
    public void filldropdownlist(string text,string value,string table,string condition,DropDownList ddllst)
    {
        if (condition == "")
        {
            string sql = "select " + text + "," + value + " from " + table;
            adapter(sql);
            if (dt.Rows.Count > 0)
            {
                ddllst.DataSource = dt;
                ddllst.DataTextField = text;
                ddllst.DataValueField = value;
                ddllst.DataBind();
            }
        }
        else 
        {
            string sql = "select " + text + "," + value + " from " + table + " where " + condition;
            adapter(sql);
            if (dt.Rows.Count > 0)
            {
                ddllst.DataSource = dt;
                ddllst.DataTextField = text;
                ddllst.DataValueField = value;
                ddllst.DataBind();
            }
        }
    }
        public void fillgrid(string Sql,GridView grd)
        {
        adapter(Sql);
            if (dt.Rows.Count>0)
            {
            grd.DataSource=dt;
            grd.DataBind();
            } 
       
    }
        public void filldetailsview(string sql, DetailsView dw)
        {
            adapter(sql);
            if (dt.Rows.Count > 0)
            {
                dw.DataSource = dt;
                dw.DataBind();

            }
        }
            public void filldatalist(string sql,DataList dtlst)
            {
                adapter(sql);
                if (dt.Rows.Count > 0)
                {
                    dtlst.DataSource = dt;
                    dtlst.DataBind();

                }
                
            }
            public string messagebox(string message)
            {
                string msg = "<script>alert('" + message + "')</script>";
                return msg;
            }
}
