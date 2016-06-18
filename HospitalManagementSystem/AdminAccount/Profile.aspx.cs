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
    public partial class Profile : System.Web.UI.Page
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

      


        public void Insertfunction()
        {
            try
            {
                command = Commander("[dbo].[spInsertAdmin]");

                command.Parameters.AddWithValue("@Name", nametxt.Text);
                command.Parameters.AddWithValue("@Email", emailtxt.Text);
                command.Parameters.AddWithValue("@Location", locationtxt.Text);
                command.Parameters.AddWithValue("@PhoneNumber", phonetxt.Text);
                command.Parameters.AddWithValue("@Password", "qwertyu");

                int RetrunCode = (int)command.ExecuteScalar();

                if (RetrunCode == 1)
                {
                    successid.Text = "Update Successfull";
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
                successid.CssClass = "alert alert-danger";
            }
            finally
            {
                CloseConnection();
            }
        }
        /*------------------------------
        methods for changing passwords
           ---------------------------  */
        public void Updatepassword()
        {
            try
            {
                Commander("[dbo].[spChangeAdmin]");
                command.Parameters.AddWithValue("@Email", emailtxt.Text);
                command.Parameters.AddWithValue("@Password", passtxt.Text);
                command.ExecuteNonQuery();


                int RetrunCode = (int)command.ExecuteScalar();

                if (RetrunCode == 1)
                {
                    successid.Text = "Update Successfull";
                    Label1.CssClass = "alert alert-danger";
                }
                else
                {
                    successid.Text = "Update Failed";
                    successid.CssClass = "alert alert-danger";

                }
            }
            catch (Exception ex)
            {
                successid.Text = ex.ToString() + "Error Upadate";
                successid.CssClass = "alert alert-danger";
            }
            finally
            {
                CloseConnection();

            }
        }

        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addProfile_Click(object sender, EventArgs e)
        {
            Insertfunction();

        }

        protected void changepassword_Click(object sender, EventArgs e)
        {
            Updatepassword();
        }
    }
}
   