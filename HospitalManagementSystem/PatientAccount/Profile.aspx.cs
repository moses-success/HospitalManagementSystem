using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagementSystem.PatientAccount
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



        public void CheckPassword()
        {
            string Query = "Select * from [dbo].[tbl_Patient] where Password=@Password";
            command.Connection = connection;
            command.CommandText = Query;
            command.Parameters.AddWithValue("@Password", passtxt.Text);
            connection.Open();
            reader = command.ExecuteReader();

            if (reader.HasRows == true)
            {
                Updatepassword();

                CloseConnection();
                Label2.Text = "Update Successfull";
                Label2.CssClass = "alert alert-success";
            }
            else
            {
                Label2.Text = ("Old Password is Incorrect");
                passtxt.Text = null;
                Label2.CssClass = "alert alert-danger";
                CloseConnection();

            }

        }

        public void Updatepatient()
        {

            try
            {
                Commander("[dbo].[spUpadatePatient]");

                command.Parameters.AddWithValue("@Name", nametxt.Text);
                command.Parameters.AddWithValue("@Email", emailtxt.Text);
                command.Parameters.AddWithValue("@Location", locationtxt.Text);
                command.Parameters.AddWithValue("@PhoneNumber", phonetxt.Text);

                command.ExecuteNonQuery();

                CloseConnection();
                Label1.Text = "Update Successfull";
                Label1.CssClass = "alert alert-success";
            }
            catch (Exception ex)
            {
                ex.ToString();
                Label1.Text = "Error Updating Patient";
                Label1.CssClass = "alert alert-danger";

            }

        }


        public void Updatepassword()
        {
            Commander("[dbo].[spUpadatePatientPassword]");

            command.Parameters.AddWithValue("@Password", newpasstxt.Text);
            command.Parameters.AddWithValue("@Email", emailtxt.Text);

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }




        protected void addProfile_Click(object sender, EventArgs e)
        {
            Updatepatient();
        }




        protected void changepassword_Click(object sender, EventArgs e)
        {
            CheckPassword();
        }
    }
}
