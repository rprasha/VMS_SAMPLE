<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication1.WebForm3" %>

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
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="text-center" style="background-color:royalblue;color:white;font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;border:solid thick"><strong><u style="text-underline-position:below">Online Test</u></strong></h1>
                        <div class="col-lg-12" style="border-style:groove solid">
                            <h1 class="text-center" style="background-color:royalblue;color:white;font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;border:solid thick"><strong><u style="text-underline-position:below">Answer Paper Correction</u></strong></h1>
                                <hr class="line" style="border: 1px solid #ff6a00" />
                                   <center style="margin-left:33%">
                                        <div class="col-lg-6">
                                            <asp:Label ID="Label1" runat="server" Text="CompanyName:"  ValidateRequestMode="Enabled"></asp:Label>
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
                                                        <asp:Label ID="Label2" runat="server" Text="PositionName:" ValidateRequestMode="Enabled"></asp:Label>
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
                                                                 <asp:Label ID="Label3" runat="server" Text="Scheduled From Date:"></asp:Label>  
                                                                    <asp:TextBox ID="TextStartDate" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                                                    <br />
                                                                      <br />
                                                                        <asp:Label ID="Label4" runat="server" Text="Scheduled End Date:"></asp:Label>  
                                                                    <asp:TextBox ID="TextEndDate" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                                                    <br />
                                                                      <br /> 
                                                                        <div class="clearfix">
                                                                                                <asp:Button ID="Btn_Search" CssClass="btn btn-block btn-info" runat="server"  Text="Search" OnClick="Btn_Search_Click"></asp:Button>
                                                                                                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                                                                                        <br />
                                                                                                            <br />
                                                                                                                <asp:Button ID="Btn_Cancel" CssClass="btn  btn-block  btn-danger" runat="server" Text="Cancel"></asp:Button>
                                                                                                                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label> 
                                                                                                                        <br />
                                                                                                                            <br />
                                     </div> 
                               </div>
                        </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
