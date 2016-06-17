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

namespace HospitalManagementSystem.AdminAccount
{
    public partial class Manage_Notice : System.Web.UI.Page
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



        public void Insertfunction()
        {
            try
            {
                command = Commander("[dbo].[spInsertNoticeBoard]");

                command.Parameters.AddWithValue("@Title", titletxt.Text);
                command.Parameters.AddWithValue("@Date", datetxt.Text);
                command.Parameters.AddWithValue("@Notice", noticetxt.Text);


                command.ExecuteNonQuery();

                CloseConnection();
                successid.Text = "Notice Added Successfull";
                successid.CssClass = "alert alert-success";

            }
            catch (Exception ex)
            {
                ex.ToString();
                successid.Text = "Error Adding Notice";
                successid.CssClass = "alert alert-danger";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addnotice_Click(object sender, EventArgs e)
        {
            Insertfunction();

        }

        protected void NoticeGridView_RowUpdated(object sender, System.Web.UI.WebControls.GridViewUpdatedEventArgs e)
        {
            Label1.Visible = true;

            if (e.AffectedRows > 0)
            {
                Label1.Text = "Notice with ID = \"" +
                    e.Keys[0].ToString() + "\"is Updated Successfully";
                Label1.ForeColor = Color.Green;
            }
            else
            {
                Label1.Text = "Notice with ID = \"" +
                    e.Keys[0].ToString() + "\"is not Updated Due To an Error";
                Label1.ForeColor = Color.Red;
            }
        }

        protected void PatientGridView_RowDeleted(object sender, System.Web.UI.WebControls.GridViewDeletedEventArgs e)
        {
            Label1.Visible = true;

            if (e.AffectedRows > 0)
            {
                Label1.Text = "Notice with ID = \"" +
                    e.Keys[0].ToString() + "\"is Deleted Successfully";
                Label1.ForeColor = Color.Green;
            }
            else
            {
                Label1.Text = "Notice with ID = \"" +
                    e.Keys[0].ToString() + "\"is not Deleted Due To an Error";
                Label1.ForeColor = Color.Red;
            }
        }
    }
}
