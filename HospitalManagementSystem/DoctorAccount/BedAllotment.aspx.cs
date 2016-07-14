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
    public partial class BedAllotment : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["AllConnection"].ConnectionString);
        SqlCommand command = new SqlCommand();

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

        public void InsertBedAllot()
        {
            try
            {
                command = Commander("[dbo].[spInsertBedAllot]");

                command.Parameters.AddWithValue("@PatientName", patientnametxt.SelectedValue);
                command.Parameters.AddWithValue("@BedNumber", Bedtxt.Text);
                command.Parameters.AddWithValue("@Allotment", alldatetxt.Text);
                command.Parameters.AddWithValue("@Discharge", desdatetxt.Text);

                command.ExecuteNonQuery();
                successid.Text = "Registration Successfull";
                successid.CssClass = "alert alert-success";
                ClientScript.RegisterStartupScript(this.GetType(), "key", "launchModal();", true);

            }
            catch (Exception ex)
            {
                ex.ToString();
                successid.Text = "Error Adding BedAllotment";
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

        protected void addBedallotment_Click(object sender, EventArgs e)
        {
            InsertBedAllot();
        }
    }
}