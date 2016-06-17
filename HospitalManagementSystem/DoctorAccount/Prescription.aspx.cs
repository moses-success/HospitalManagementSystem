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
    public partial class Prescription : System.Web.UI.Page
    {
     

        public SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["AllConnection"].ConnectionString);
        public SqlCommand command = new SqlCommand();


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


        public void InsertBloodBank()
        {
            try
            {


                command = Commander("[dbo].[spInsertPrescription]");
                command.Parameters.AddWithValue("@DoctorName", doctxt.Text);
                command.Parameters.AddWithValue("@PatientName", Patienttxt.Text);
                command.Parameters.AddWithValue("@CaseHistory", casehistroytxt.Text);
                command.Parameters.AddWithValue("@Medication", medicationtxt.Text);
                command.Parameters.AddWithValue("@PharmMedication", phameditxt.Text);
                command.Parameters.AddWithValue("@Discription", descriptiontxt.Text);
                command.Parameters.AddWithValue("@DatePes", datetxt.Text);


                command.ExecuteNonQuery();
                successid.Text = "Registration Successfull";
                successid.CssClass = "alert alert-success";
                ClientScript.RegisterStartupScript(this.GetType(), "key", "launchModal();", true);
            }
            catch (Exception ex)
            {
                ex.ToString();
                successid.Text = "Error Adding BloodBank";
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

        protected void addpescription_Click(object sender, EventArgs e)
        {
            InsertBloodBank();
        }
    }
}