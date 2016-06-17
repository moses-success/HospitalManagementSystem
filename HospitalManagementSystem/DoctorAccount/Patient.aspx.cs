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

namespace HospitalManagementSystem.DoctorAccount
{
    public partial class Patient : System.Web.UI.Page
    {

        public SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["AllConnection"].ConnectionString);
        public SqlCommand command = new SqlCommand();
        public SqlDataReader reader;


        int numbr = 0;

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
            string Query = "select * from [dbo].[tbl_Patient] where @Email=Email";
            command.Connection = connection;
            command.CommandText = Query;
            command.Parameters.AddWithValue("@Email", emailtxt.Text);
            connection.Open();
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
                command = Commander("[dbo].[spInsertPatient]");

                command.Parameters.AddWithValue("@Name", nametxt.Text);
                command.Parameters.AddWithValue("@Email", emailtxt.Text);
                command.Parameters.AddWithValue("@Password", passwordtxt.Text);
                command.Parameters.AddWithValue("@Location", locationtxt.Text);
                command.Parameters.AddWithValue("@PhoneNumber", phonetxt.Text);
                command.Parameters.AddWithValue("@Sex", sextxt.SelectedValue.ToString());
                command.Parameters.AddWithValue("@DateOfBrith", dobtxt.Text);
                command.Parameters.AddWithValue("BloodGroup", bloodtxt.SelectedValue.ToString());
                command.Parameters.AddWithValue("@Age", agetxt.Text);

                command.ExecuteNonQuery();
                CloseConnection();


                numbr = numbr + 1;



                successid.Text = "Registration Successfull";
                successid.CssClass = "alert alert-success";

            }
            catch (Exception ex)
            {
                ex.ToString();
                successid.Text = "Error Adding Patient";
                successid.CssClass = "alert alert-danger";

            }

        }





        protected void Page_Load(object sender, EventArgs e)
        {
            numberpat.Text = numbr.ToString();
        }

        protected void addPatient_Click(object sender, EventArgs e)
        {
            checkfunction();
            Insertfunction();
        }



        protected void PatientGridView_RowUpdated(object sender, System.Web.UI.WebControls.GridViewUpdatedEventArgs e)
        {
            Label1.Visible = true;

            if (e.AffectedRows > 0)
            {
                Label1.Text = "Patient with ID = \"" +
                    e.Keys[0].ToString() + "\"is Updated Successfully";
                Label1.ForeColor = Color.Green;
            }
            else
            {
                Label1.Text = "Patient with ID = \"" +
                    e.Keys[0].ToString() + "\"is not Updated Due To an Error";
                Label1.ForeColor = Color.Red;
            }
        }

        protected void PatientGridView_RowDeleted(object sender, System.Web.UI.WebControls.GridViewDeletedEventArgs e)
        {
            Label1.Visible = true;

            if (e.AffectedRows > 0)
            {
                Label1.Text = "Patient with ID = \"" +
                    e.Keys[0].ToString() + "\"is Deleted Successfully";
                Label1.ForeColor = Color.Green;
            }
            else
            {
                Label1.Text = "Patient with ID = \"" +
                    e.Keys[0].ToString() + "\"is not Deleted Due To an Error";
                Label1.ForeColor = Color.Red;
            }
        }
    }
}
