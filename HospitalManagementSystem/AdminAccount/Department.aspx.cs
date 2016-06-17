using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagementSystem.AdminAccount
{
    public partial class Department : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        public SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["AllConnection"].ConnectionString);
        public SqlCommand command = new SqlCommand();
        public SqlDataReader reader;
        public SqlCommand Commander(string CommanderCommand)
        {
            connection.Close();
            command.Parameters.Clear();
            connection.Open();
            command.Connection = connection;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = CommanderCommand;

            return command;
        }

        public void CloseConn()
        {

            connection.Close();
            command.Dispose();
            command.Parameters.Clear();
        }


 
        protected void addDepartment_Click(object sender, EventArgs e)
        {


            try
            {

                command = Commander("[dbo].[spInsertDepartment]");
                command.Parameters.AddWithValue("@DepartmentName", departmenttxt.Text);
                command.Parameters.AddWithValue("@DepartmentDescription", descriptiontxt.Text);
                command.ExecuteNonQuery();
                CloseConn();

                successid.Visible = true;
                successid.Text = "Department Added Successfully";
                successid.CssClass = "alert alert-success";

            }
            catch (Exception ex)
            {
                successid.Visible = true;
                successid.Text = ex + "Error Adding Department";
                successid.CssClass = "alert alert-danger";
            }

        }

        protected void DepartmentGridView_RowDeleted(object sender, System.Web.UI.WebControls.GridViewDeletedEventArgs e)
        {
            successid.Visible = true;

            if (e.AffectedRows > 0)
            {
                successid.Text = "Department With ID = \""
                    + e.Keys[0] + "\" is successfully deleted";
                successid.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                successid.Text = "Department With ID = \""
                    + e.Keys[0].ToString() + "\" is not Updated Due To an Error";
                successid.ForeColor = System.Drawing.Color.Red;

            }
        }

        protected void DepartmentGridView_RowUpdated(object sender, System.Web.UI.WebControls.GridViewUpdatedEventArgs e)
        {
            successid.Visible = true;
            if (e.AffectedRows > 0)
            {
                successid.Text = "Department  With ID=\""
                    + e.Keys[0].ToString() + "\" is Successfully Updated";
            }
            else
            {
                successid.Text = "Department  With ID=\""
                   + e.Keys[0].ToString() + "\" is not deleted Due To an Error";
            }
        }
    }
}
