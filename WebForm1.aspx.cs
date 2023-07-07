using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MachineTest_Govind
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int count = Convert.ToInt32(DropDownList3.SelectedValue);
            //var con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //con.Open();
            //SqlCommand cmd = new SqlCommand("spGettoprecords",con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@param1", count);
            //SqlDataReader dr = cmd.ExecuteReader();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Office from tblEmployeemaster where [Employee Name]=@ename AND Department=@dept AND Position=@position ", con);
            cmd.Parameters.AddWithValue("@ename", Convert.ToString(TextBox4.Text));
            cmd.Parameters.AddWithValue("@dept", Convert.ToString(DropDownList1.SelectedItem));
            cmd.Parameters.AddWithValue("@position", Convert.ToString(DropDownList2.SelectedItem));
            var txt = cmd.ExecuteScalar();
            TextBox3.Text = txt.ToString();
            con.Close();
            //TextBox3.Text = dr.ToString();
        }
    }
}