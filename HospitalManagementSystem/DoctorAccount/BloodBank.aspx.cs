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
    public partial class BloodBank : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

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
                command = Commander("[dbo].[spInsertBloodBank]");
                command.Parameters.AddWithValue("@PatientName", Patienttxt.Text);
                command.Parameters.AddWithValue("@Age", agetxt.Text);
                command.Parameters.AddWithValue("@Gender", gendertxt.Text);
                command.Parameters.AddWithValue("@BloodGroup", bloodtxt.Text);
                command.Parameters.AddWithValue("@DonatedDate", datetxt1.Text);

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
      

        protected void donateblood_Click(object sender, EventArgs e)
        {
            InsertBloodBank();
        }
    }
}
 