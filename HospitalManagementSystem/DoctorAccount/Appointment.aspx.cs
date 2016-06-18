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
    public partial class Appointment : System.Web.UI.Page
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
        public void CloseConn()
        {

            connection.Close();
            command.Dispose();
            command.Parameters.Clear();
        }



        public void insertfuction()
        {
            try
            {
                command = Commander("[dbo].[spInsertAppointment]");
                command.Parameters.AddWithValue("@DoctorName", nametxt.Text);
                command.Parameters.AddWithValue("@PatientName", Patienttxt.SelectedValue);
                command.Parameters.AddWithValue("@BirthDate", datetxt.Text);

                command.ExecuteNonQuery();
                Label1.Text = "Registration Successfull";
                Label1.CssClass = "alert alert-success";
             
            }
            catch (Exception ex)
            {
                ex.ToString();
                Label1.Text = "Error Adding Appointment";
                Label1.CssClass = "alert alert-danger";
            }
            finally
            {
                CloseConn();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }



        protected void addappointment_Click(object sender, EventArgs e)
        {
            insertfuction();
        }
    }
}
