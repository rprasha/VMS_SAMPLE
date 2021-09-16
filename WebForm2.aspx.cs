using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
using System.IO.Ports;
using System.IO.MemoryMappedFiles;
namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Save_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\prashanth\Source\Repos\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO TBL_MASTER_QUESTIONPAPER1 VALUES(@CompanyName,@PositionName,@Description,@QuestionPaperName,@NoofQuestions,@Duration)", con);
                cmd.Parameters.AddWithValue("@CompanyName",DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@PositionName", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@Description",TextDescription.Text);
                cmd.Parameters.AddWithValue("@QuestionPaperName",TextQuestionPaperName.Text);
                cmd.Parameters.AddWithValue("@NoofQuestions",TextMaxNoOfQuestion.Text);
                cmd.Parameters.AddWithValue("@Duration", TextDUration.Text);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Label10.Text = "Saved Successfully" + Label10;
        }
    }
}