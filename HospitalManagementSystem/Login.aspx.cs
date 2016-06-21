using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagementSystem
{
    public partial class Login : System.Web.UI.Page
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


        public void Loginfunction()
        {
            try
            {
                string PatientName = nametxt.Text.Trim();
                string Password = passtxt.Text.Trim();

                command = Commander("[dbo].[spLoginPatient]");
                command.Parameters.AddWithValue("@PatientName", nametxt.Text);
                command.Parameters.AddWithValue("@Password", passtxt.Text);


                int ReturnNumber = (int)command.ExecuteScalar();
                if (ReturnNumber == 1)
                {
                    Session["[PatientName]"] = PatientName;
                    Response.Redirect("~/PatientAccount/PatDashboard.aspx");
                }
                else
                {
                    Label1.Text = "Check Details and Login Again ";
                    Label1.CssClass = "alert alert-danger";
                }

            }
            catch (Exception ex)
            {
                ex.ToString();
                Label1.Text = "Error ";
                Label1.CssClass = "alert alert-danger";

            }
            finally
            {
                CloseConnection();
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logIn_Click(object sender, EventArgs e)
        {
            Loginfunction();
        }

     
    }
}