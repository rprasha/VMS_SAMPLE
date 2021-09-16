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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btn_Save_Click(object sender, EventArgs e)
        {
            using ( SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\prashanth\Source\Repos\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO TBL_MASTER_Questions VALUES(@CompanyName,@Position,@QuestionPaper,@Question,@QuestionDescription,@complexity,@SubjectiveFlag,@Marks,@Options)", con);
                cmd.Parameters.AddWithValue("@CompanyName",DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@Position", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@QuestionPaper", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("@Question", TextQustion.Text);
                cmd.Parameters.AddWithValue("@QuestionDescription", TextQuestionDescription.Text);
                cmd.Parameters.AddWithValue("@complexity", DropDownList4.SelectedValue);
                cmd.Parameters.AddWithValue("@SubjectiveFlag", TextSubjectiveFlag.Text);
                cmd.Parameters.AddWithValue("@Marks",TextMarks.Text);
                cmd.Parameters.AddWithValue("@Options", TextOptions.Text);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Label10.Text = " Saved Successfully" +Label10;
        }
    }
}