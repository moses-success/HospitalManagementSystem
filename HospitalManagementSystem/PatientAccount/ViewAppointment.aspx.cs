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
    public partial class ViewAppointment : System.Web.UI.Page
    {
        public SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["AllConnection"].ConnectionString);
        public SqlCommand command = new SqlCommand();
        public SqlDataAdapter da = new SqlDataAdapter();

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
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["[PatientName]"].ToString();


            lb1.Text = "WELLCOME:: " + Session["[PatientName]"];

            command = Commander("[dbo].[spSelectAppointment]");
            command.Parameters.AddWithValue("@patient", name);


            da.SelectCommand = command;

            DataSet ds = new DataSet();

            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {

                lbl_doctorname.Text = ds.Tables[0].Rows[0]["DoctorName"].ToString();
                lbl_patientname.Text = ds.Tables[0].Rows[0]["PatientName"].ToString();
                lbl_appointment.Text = ds.Tables[0].Rows[0]["BirthDate"].ToString();
                
            }
        }
    }
}