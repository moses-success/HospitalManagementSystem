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
    public partial class Prescription : System.Web.UI.Page
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

            command = Commander("spSelectPrescription");
            command.Parameters.AddWithValue("@patient", name);


            da.SelectCommand = command;

            DataSet ds = new DataSet();

            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {

                lbl_doctorname.Text = ds.Tables[0].Rows[0]["DoctorName"].ToString();
                lbl_patientname.Text = ds.Tables[0].Rows[0]["PatientName"].ToString();
                lbl_casehistory.Text = ds.Tables[0].Rows[0]["CaseHistory"].ToString();
                lbl_pharm.Text = ds.Tables[0].Rows[0]["Medication"].ToString();
                lbl_medication.Text = ds.Tables[0].Rows[0]["PharmMedication"].ToString();
                lbl_disp.Text = ds.Tables[0].Rows[0]["Discription"].ToString();
                lbl_pescrib.Text = ds.Tables[0].Rows[0]["DatePes"].ToString();
            }
        }
    }
}