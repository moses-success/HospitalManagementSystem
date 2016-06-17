using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagementSystem.DoctorAccount
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

        /*------------------------------
        methods for updating  Doctor
           ---------------------------  */
        public void UpdateDoctor()
        {
            try
            {
                command = Commander("[dbo].[spUpdateDoctor]");

                command.Parameters.AddWithValue("@Name", nametxt.Text);
                command.Parameters.AddWithValue("@Email", emailtxt.Text);
                command.Parameters.AddWithValue("@Password", passwordtxt.Text);
                command.Parameters.AddWithValue("@Location", locationtxt.Text);
                command.Parameters.AddWithValue("@PhoneNumber", phonetxt.Text);
                command.Parameters.AddWithValue("@Department", departmenttxt.Text);
                command.Parameters.AddWithValue("@Profile", profiletxt.Text);



                int RetrunCode = (int)command.ExecuteScalar();

                if (RetrunCode == 1)
                {
                    Label1.Text = "Update Successfull";
                    Label1.CssClass = "alert alert-success";
                

                }
                else
                {
                    Label1.Text = (" Email Address " + emailtxt.Text + "Was Not Updated");
                    emailtxt.Text = null;
                    Label1.CssClass = "alert alert-danger";
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
                Label1.Text = "Error Updating Doctor";
                Label1.CssClass = "alert alert-danger";
            }
            finally
            {
                CloseConnection();
            }

        }

        /*------------------------------
    methods for changing password 
       ---------------------------  */
        public void Changepassword()
        {
            try
            {
                command = Commander("[dbo].[spUpdateDoctorPassword]");

                command.Parameters.AddWithValue("@Email", email1txt.Text);
                command.Parameters.AddWithValue("@Password", passnewtxt.Text);

                int RetrunCode = (int)command.ExecuteScalar();

                if (RetrunCode == 1)
                {
                    Label1.Text = "Update Successfull";
                    Label1.CssClass = "alert alert-success";
                   

                }
                else
                {
                    Label1.Text = ("Password Was Not Updated");
                    emailtxt.Text = null;
                    Label1.CssClass = "alert alert-danger";
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
                Label1.Text = "Error Updating Password";
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

        protected void addProfile_Click(object sender, EventArgs e)
        {
            UpdateDoctor();


        }

        protected void changepassword_Click(object sender, EventArgs e)
        {
            Changepassword();
        }
    }
}