<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="display.aspx.cs" Inherits="BudgetApp.display" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
<title>Budget Manager</title>
<script src="js/jquery-3.2.1.min.js"></script> 
<script src="js/bootstrap.js"></script>

<link rel="stylesheet" href="css/style.css" type="text/css"/>
<link href="css/bootstrap.css" rel="stylesheet"/>
<link href="css/bootstrap.min.css" rel="stylesheet"/>

<!--<link href="css/bootstrap-theme.css" rel="stylesheet">-->
<style>
.well {
    background-color: rgb(95, 190, 142) !important;

}



</style>
    <script type="text/javascript">
        function PrintGridData() {
            var prtGrid = document.getElementById('<%=GridView1.ClientID %>');
            var prtwin = window.open('', 'PrintGridView',
'left=100,top=100,width=400,height=400,tollbar=0,scrollbars=1,status=0,resizable=1');
            prtwin.document.write(prtGrid.outerHTML);
            prtwin.document.close();
            prtwin.focus();
            prtwin.print();
            prtwin.close();
        }
        function Sendmail() {
            alert("Your mail has been successfully send!!");
        }
   </script> 
</head>
<body> 
    <div class="col-md-12">
    <div id="log">
       <span> <asp:Image ID="logo" runat="server" src="images/logo.jpg" alt="logo" Height="50px" Width="50px"/>
Budget Manager </span>
        <span> Welcome&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="#FF9933" Font-Bold="True" Font-Size="X-Large"></asp:Label>    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/new.aspx">Home |</asp:LinkButton>
        <asp:LinkButton ID="btnLogout" runat="server" OnClick="btnLogout_Click">Logout</asp:LinkButton></span></div>
   
    <h1 style="text-align:center">Monthly Budget Analysis</h1>
       
        <div id="wrap">
        <div class="well">
           <!--
           
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    
                 
                       
                </ContentTemplate>
            </asp:UpdatePanel>-->
             <form id="form1" runat="server">
                 <div class="table table-responsive">
              <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" >

                <asp:ListItem>January</asp:ListItem>
                <asp:ListItem>February</asp:ListItem>
                <asp:ListItem>March</asp:ListItem>
                <asp:ListItem>April</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>June</asp:ListItem>
                <asp:ListItem>July</asp:ListItem>
                <asp:ListItem>August</asp:ListItem>
                <asp:ListItem>September</asp:ListItem>
                <asp:ListItem>October</asp:ListItem>
                <asp:ListItem>November</asp:ListItem>
                <asp:ListItem>December</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
                 <asp:Panel ID="Panel1" runat="server">     
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ForeColor="#333333" GridLines="Horizontal"  ShowHeaderWhenEmpty="True" UseAccessibleHeader="False" EmptyDataText="Oops!!No record found" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True"  ShowFooter="True" Width="500px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="expense" HeaderText="expense" SortExpression="expense" >
                    </asp:BoundField>
                    <asp:BoundField DataField="budget" HeaderText="budget" SortExpression="budget" >
                    </asp:BoundField>
                    <asp:BoundField DataField="balance" HeaderText="balance" SortExpression="balance" >
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="bill" SortExpression="bill">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("bill") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "http://localhost:49368/"+Eval("bill") %>' Height="50px" Width="50px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
                     </asp:Panel> 
                   <br />
                    <table><tr>
                        <td>&nbsp;</td>
                         <td> <asp:Button ID="btnMail" runat="server" Text="Mail me" CssClass="btn btn-warning" OnClick="btnMail_Click" /><asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your mail id" ></asp:TextBox></td>
                        <td> <asp:Button ID="btnPrint" runat="server" Text="Print/Save as PDF" OnClientClick="PrintGridData();" CssClass="btn btn-primary"/></td>
                       
                           </tr></table>
                   </div>
            </form>
        </div>
            </div>
        <div id="footer"  style="text-align:center;background-color:#B9B9B9;color:white;height:50px;width:100%;padding-top:20px; margin-bottom:-100px;">
            Web Application designed by Sumayya kp<span style="color:rgb(95, 190, 142)">@</span>2019
        </div>
  </div>
    
</body>
</html>
