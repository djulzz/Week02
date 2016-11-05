using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Week02.scripts
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection dbConnection = new SqlConnection("Data Source=(local); Integrated Security=true");
            try
            {
                dbConnection.Open();
                dbConnection.ChangeDatabase("skateboards");
            } catch( SqlException exception )
            {
                Response.Write("<p>Error code " + exception.Number + ": " + exception.Message + "</p>");
                return;
            }
            Response.Write("Database Opened Successfully");
            string SQLString = "select * from inventory";
            SqlCommand empCommand = new SqlCommand(SQLString, dbConnection);
            SqlDataReader empRecords = empCommand.ExecuteReader();
            if( empRecords.Read() )
            {
                do
                {
                    Response.Write(empRecords["manufacturer"] + "<br />");
                } while (empRecords.Read());
            } else
            {
                Response.Write("Your Query Returned no Records");
            }
            dbConnection.Close();
        }
    }
}