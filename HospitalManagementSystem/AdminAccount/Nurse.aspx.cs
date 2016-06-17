using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagementSystem.AdminAccount
{
    public partial class Nurse : System.Web.UI.Page
    {
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

        public void CloseConnection()
        {
            connection.Close();
            command.Dispose();
            command.Parameters.Clear();
        }

        public void insertfuction()
        {
            try
            {

                command = Commander("[dbo].[spInsertNurse]");
                command.Parameters.AddWithValue("@Name", nametxt.Text);
                command.Parameters.AddWithValue("@Email", emailtxt.Text);
                command.Parameters.AddWithValue("@Password", passwordtxt.Text);
                command.Parameters.AddWithValue("@Location", locationtxt.Text);
                command.Parameters.AddWithValue("@PhoneNumber", phonetxt.Text);

                int RetrunCode = (int)command.ExecuteScalar();

                if (RetrunCode == 1)
                {
                    Label1.Text = (" Email Address " + emailtxt.Text + " Already exist");
                    emailtxt.Text = null;
                    Label1.CssClass = "alert alert-danger";
                }
                else
                {
                    successid.Text = "Registration Successfull";
                    successid.CssClass = "alert alert-success";




                }
            }
            catch (Exception ex)
            {
                successid.Text = ex.ToString() + "Error Adding Nurse";
                successid.ForeColor = Color.Red;
            }
            finally
            {
                CloseConnection();
            }
           
              

            

        }

        
        
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void addNurse_Click(object sender, EventArgs e)
        {

            insertfuction();
        }

        protected void NurseGridView_RowUpdated(object sender, System.Web.UI.WebControls.GridViewUpdatedEventArgs e)
        {
            Label1.Visible = true;

            if (e.AffectedRows > 0)
            {
                Label1.Text = "Nurse With ID =\"" + e.Keys[0] + "is Successfully Updated";
                Label1.ForeColor = Color.Green;

            }
            else
            {
                Label1.Text = "Nurse With ID =\"" + e.Keys[0].ToString() + "\"is not Updated Due To an Error";
                Label1.ForeColor = Color.Red;
            }
        }

        protected void NurseGridView_RowDeleted(object sender, System.Web.UI.WebControls.GridViewDeletedEventArgs e)
        {
            Label1.Visible = true;

            if (e.AffectedRows > 0)
            {
                Label1.Text = "Nurse With ID =\"" + e.Keys[0] + "is Successfully Deleted";
                Label1.ForeColor = Color.Green;

            }
            else
            {
                Label1.Text = "Nurse With ID =\"" + e.Keys[0].ToString() + "\"is not Deleted Due To an Error";
                Label1.ForeColor = Color.Red;
            }
        }
    }
}