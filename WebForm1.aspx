<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SAMPLE Page</title>
    <meta charset="utf-8" />
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <script src="Scripts/WebForms/WebForms.js"></script>
    <script src="Scripts/WebForms/SmartNav.js"></script>
    <script src="Scripts/WebForms/GridView.js"></script>
    <script src="Scripts/WebForms/MSAjax/MicrosoftAjax.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="text-center" style="background-color:royalblue;color:white;font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;border:solid thick"><strong><u style="text-underline-position:below">Online Test</u></strong></h1>
                     <div class="col-lg-12">
                         <h1 class="text-center" style="background-color:royalblue;color:white;font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;border:solid thick"><strong><u style="text-underline-position:below">Master Questions</u></strong></h1>
                         <hr class="line" style="border: 1px solid #ff6a00" />
                         <center style="margin-left:33%">
                           <div class="col-lg-6">
                               <asp:Label ID="Label1" runat="server" Text="Company Name:" ValidateRequestMode="Enabled"></asp:Label>
                               <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                   <asp:ListItem>--Select company Name--</asp:ListItem>
                                   <asp:ListItem>VAPS Company</asp:ListItem>
                                   <asp:ListItem>Vaps Knowledge Services Pvt Ltd</asp:ListItem>
                                   <asp:ListItem>Vaps Technosoft Pvt Ltd</asp:ListItem>
                                   <asp:ListItem>Unnathi Marketing</asp:ListItem>
                                   <asp:ListItem>Smart Infrastructure and Services</asp:ListItem>
                                   <asp:ListItem >Marga Innovations and Developer</asp:ListItem>
                                   <asp:ListItem>Pacific System and Enterprises</asp:ListItem>
                                   <asp:ListItem>Global Quality Training and Accessories</asp:ListItem>
                                   <asp:ListItem>AKSHAYA Foundation</asp:ListItem>
                               </asp:DropDownList>
                               <br />
                                <br />
                               <asp:Label ID="Label2" runat="server" Text="Position:"  ValidateRequestMode="Enabled"></asp:Label>
                               <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                                   <asp:ListItem>--Select Position</asp:ListItem>
                                   <asp:ListItem>Software Developer</asp:ListItem>
                                   <asp:ListItem>Software & Quality Tester</asp:ListItem>
                                   <asp:ListItem>Accountant</asp:ListItem>
                                   <asp:ListItem>Business Developer</asp:ListItem>
                                   <asp:ListItem>Angular Developer</asp:ListItem>
                                   <asp:ListItem>UI Developer</asp:ListItem>
                                   <asp:ListItem>Full Stack Developer</asp:ListItem>
                               </asp:DropDownList>
                               <br />
                                <br />
                                 <asp:Label ID="Label3" runat="server" Text="Question Paper:"  ValidateRequestMode="Enabled"></asp:Label>
                               <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server">
                                   <asp:ListItem>--Select Question Paper Name--</asp:ListItem>
                                   <asp:ListItem>Software Developer</asp:ListItem>
                                   <asp:ListItem>Software Tester</asp:ListItem>
                                   <asp:ListItem>Accountant</asp:ListItem>
                                   <asp:ListItem>Angular Developer</asp:ListItem>
                               </asp:DropDownList>
                               <br />
                                <br />
                                    <asp:Label ID="Label4" runat="server" Text="Question:"  ValidateRequestMode="Enabled"></asp:Label>
                                     <asp:TextBox ID="TextQustion" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                      <br />
                                       <br />
                                        <asp:Label ID="Label5" runat="server" Text="Question Description:"></asp:Label>
                                         <asp:TextBox ID="TextQuestionDescription" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                         <br />
                                          <br />
                                            <asp:Label ID="Label6" runat="server" Text="Complexity"></asp:Label>
                                                <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server">
                                                    <asp:ListItem>--Select Complexity--</asp:ListItem>
                                                    <asp:ListItem>Simple</asp:ListItem>
                                                    <asp:ListItem>Medium</asp:ListItem>
                                                    <asp:ListItem>Hard</asp:ListItem>
                                          </asp:DropDownList> 
                                           <br />
                                             <br />
                                                <asp:Label ID="Label7" runat="server" Text="SubjectiveFlag:"></asp:Label>
                                                  <asp:TextBox ID="TextSubjectiveFlag" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                                    <br />
                                                     <br />
                                                      <asp:Label ID="Label8" runat="server" Text="Marks:"></asp:Label>
                                                         <asp:TextBox ID="TextMarks" CssClass="form-control" TextMode="Number" AutoCompleteType="BusinessPhone" runat="server"></asp:TextBox>
                                                            <br />
                                                             <br />
                                                                <asp:Label ID="Label9" runat="server" Text="Options:"></asp:Label>
                                                                    <asp:TextBox ID="TextOptions" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                                                      <br />
                                                                        <br />
                                                                        <div class="clearfix">
                                                                            <asp:Button ID="Btn_Save" CssClass="btn btn-block btn-info" runat="server" Text="SAVE" OnClick="Btn_Save_Click"></asp:Button>
                                                                                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                                                            <br />
                                                                             <br />
                                                                              <asp:Button ID="Btn_Cancel" CssClass="btn  btn-block  btn-danger" runat="server" Text="Cancel"></asp:Button>
                                                                                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label> 
                                                                                <br />
                                                                                  <br />
                                                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                                                                                        <Columns>
                                                                                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                                                                            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                                                                                            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                                                                                            <asp:BoundField DataField="QuestionPaper" HeaderText="QuestionPaper" SortExpression="QuestionPaper" />
                                                                                            <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                                                                                            <asp:BoundField DataField="QuestionDescription" HeaderText="QuestionDescription" SortExpression="QuestionDescription" />
                                                                                            <asp:BoundField DataField="complexity" HeaderText="complexity" SortExpression="complexity" />
                                                                                            <asp:BoundField DataField="SubjectiveFlag" HeaderText="SubjectiveFlag" SortExpression="SubjectiveFlag" />
                                                                                            <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
                                                                                            <asp:BoundField DataField="Options" HeaderText="Options" SortExpression="Options" />
                                                                                        </Columns>
                                                                            </asp:GridView>
                                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [TBL_MASTER_Questions]"></asp:SqlDataSource>
                                                                        </div>
                                    </div>
                          </center>
                     </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
