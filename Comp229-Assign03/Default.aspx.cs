using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Web.UI;

namespace Comp229_Assign03
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
                bindList();
            //if (!IsPostBack)
            //{
            //    EnrollmentTextBox1.Text = DateTime.Today.ToShortDateString();

            //}
            
        }
        protected void bindList()
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Comp229Assign03ConnectionString"].ToString());

           
            SqlCommand comm = new SqlCommand("SELECT * FROM Students", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = comm.ExecuteReader();
                studentsList.DataSource = reader;
                studentsList.DataBind();
                reader.Close();
            }
            finally
            {
                connection.Close();
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection
                (ConfigurationManager.ConnectionStrings["Comp229Assign03ConnectionString"].ToString());
                
                //connection.Open();
                SqlCommand cmd = connection.CreateCommand();
                cmd.Connection = connection;
                cmd.CommandType = CommandType.Text;

                cmd.CommandText = "INSERT INTO Students (LastName,FirstMidName,EnrollmentDate) VALUES ('@LastName','@FirstMidName','@EnrollmentDate')";

                //Assign values as `parameter`. It avoids `SQL Injection`
                //cmd.Parameters.AddWithValue("@StudentID", System.Data.SqlDbType.Int).Value = AddStudentIdTextBox.Text;
                //cmd.Parameters["@StudentID"].Value = 12;

                cmd.Parameters.AddWithValue("@FirstMidName", System.Data.SqlDbType.VarChar).Value = 
                    AddFirstNameTextBox3.Text;
               

                cmd.Parameters.AddWithValue("@LastName", System.Data.SqlDbType.VarChar).Value = AddLastNameTextBox.Text;

                //DateTime dt = DateTime.ParseExact(EnrollmentTextBox1.Text, "m/d/yyyy", CultureInfo.CurrentCulture);
                cmd.Parameters.AddWithValue("@EnrollmentDate", System.Data.SqlDbType.DateTime).Value =
                Convert.ToDateTime(EnrollmentTextBox1.Text);

                connection.Open();

                cmd.ExecuteNonQuery();

                connection.Close();
                
            }
            
            
            finally
            {
                SqlConnection connection = new SqlConnection
                (ConfigurationManager.ConnectionStrings["Comp229Assign03ConnectionString"].ToString());
                connection.Close();
            }

       



            /////////////////////////////


        }
    }

}