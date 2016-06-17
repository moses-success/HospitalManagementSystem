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

        public void checkfunction()
        {
            string Query = "select * from [dbo].[tbl_Admin] @Email=Email";
            command.CommandText = Query;
            command.Connection = connection;
            connection.Open();
            command.Parameters.AddWithValue("@Email", emailtxt.Text);
            reader = command.ExecuteReader();
            while (reader.Read())
            {
                if (reader.HasRows == true)
                {
                    Label1.Text = (" Email Address = " + emailtxt.Text + " Already exist");
                    emailtxt.Text = null;
                    Label1.CssClass = "alert alert-danger";
                    CloseConnection();
                    break;
                }
                else
                {
                    Insertfunction();

                }
            }


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

                command.ExecuteNonQuery();
                CloseConnection();

                Label1.Text = "Profile Added Successfully";
                Label1.CssClass = "alert alert-success";

            }
            catch (Exception ex)
            {
                ex.ToString();
                Label1.Text = "Error Adding Profile";
                Label1.CssClass = "alert alert-danger";
            }
        }
        /*------------------------------
        methods for changing passwords
           ---------------------------  */
        public void Updatepassword()
        {
            try
            {
                Commander("[dbo].[spUpdateAdmin]");
                command.Parameters.AddWithValue("@Email", emailtxt.Text);
                command.Parameters.AddWithValue("@Password", passtxt.Text);
                command.ExecuteNonQuery();

                CloseConnection();
                Label1.Text = "Password Updated Successfully";
                Label1.CssClass = "alert alert-success";
            }
            catch (Exception ex)
            {
                ex.ToString();
                Label1.Text = "Error Adding Profile";
                Label1.CssClass = "alert alert-danger";

            }
        }

        public void Changepassword()
        {
            string Query = "select * from [dbo].[tbl_Admin] where @Password=Password";
            command.Connection = connection;
            command.CommandText = Query;
            connection.Open();
            command.Parameters.AddWithValue("@Password", passtxt.Text);
            reader = command.ExecuteReader();
            while (reader.Read())
            {
                if (reader.HasRows == true)
                {
                    Updatepassword();
                }
                else
                {
                    Label1.Text = "Error Changing Password";
                    Label1.CssClass = "alert alert-danger";
                }
            }




        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addProfile_Click(object sender, EventArgs e)
        {
            checkfunction();
           

        }

        protected void changepassword_Click(object sender, EventArgs e)
        {
            Changepassword();
        }
    }
}
   