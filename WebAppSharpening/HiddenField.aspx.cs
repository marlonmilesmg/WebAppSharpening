using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppSharpening
{
    public partial class HiddenField : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadEmployee();
            }
        }

        private void LoadEmployee()
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string sqlQuery = "select Id, Name, Gender, DeptName from dbo.EmployeesInfo where Id=1";
                SqlCommand cmd = new SqlCommand(sqlQuery, con);
                con.Open();
                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        txtName.Text = rdr["Name"].ToString();
                        txtGender.Text = rdr["Gender"].ToString();
                        txtDepartment.Text = rdr["DeptName"].ToString();
                        HiddenField1.Value = rdr["Id"].ToString();
                    }
                }

            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string sqlQuery = "Update dbo.EmployeesInfo set Name=@Name, Gender=@Gender, DeptName=@DeptName where Id=@Id";
                SqlCommand cmd = new SqlCommand(sqlQuery, con);

                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Gender", txtGender.Text);
                cmd.Parameters.AddWithValue("@DeptName", txtDepartment.Text);
                cmd.Parameters.AddWithValue("@Id", HiddenField1.Value);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                txtName.Text = "";
                txtGender.Text = "";
                txtDepartment.Text = "";
            }
        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            LoadEmployee();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}