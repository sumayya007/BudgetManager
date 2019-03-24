<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="BudgetApp.register" UnobtrusiveValidationMode="none" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-3.2.1.min.js"></script> 
<script src="js/bootstrap.js"></script>

    <link rel="stylesheet" href="css/style.css" type="text/css"/>

<link href="css/bootstrap.css" rel="stylesheet"/>
<link href="css/bootstrap.min.css" rel="stylesheet"/>
  <style type="text/css">
       #right {
   border:1px solid rgb(95, 190, 142);
    border-bottom-right-radius:8px;
    border-top-right-radius:8px;
}
       #left{
            width:40%;
            float:left;
            border:1px solid rgb(95, 190, 142);
            border-top-left-radius:8px;
            border-bottom-left-radius:8px;
            height:100%;
            padding:10px;
       }
  </style>  
</head>
<body>
    <form id="form1" runat="server">

          <div>
            <div id="samwrap" class="col-md-12">
                <div class="col-md-12">
                   <span><asp:Image ID="Image2" runat="server" src="images/logo.jpg" alt="logo" Height="50px" Width="50px" />
Budget Manager</span>    
                </div>
                <br />
                <br />
                <br />
                <div id="samone" class="col-md-2" >
                  
                </div>
                <div id="samtwo" class="col-md-8" style="height:300px;">
                   <div id="left" style="background-color:rgb(95, 190, 142);color:white;">

                        <div id="text">
               <h2>Welcome Back!</h2>
               <p>
                   To keep connected with us,</p>
                <p>
                   please login with your personal info
               </p>
               <br />
                     <asp:HyperLink ID="HyperLink1" runat="server" style="border:1px white solid;padding:4px;border-radius:8px;color:white;text-align:center;" NavigateUrl="~/login.aspx" Width="100px">Login</asp:HyperLink>
             

            </div>
                       </div>





                      
                    <div id="right" style="width:60%;height:100%;float:right;padding:10px;">
                       <asp:Label ID="Label1" runat="server" style="color:rgb(95, 190, 142);" Text="Create an Account" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <br />
                      <br />                
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="username"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Font-Size="Small" ForeColor="Red">Enter username</asp:RequiredFieldValidator>
                    <br />
                    <br />
                        
                                      
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Font-Size="Small" ForeColor="Red">Enter email</asp:RequiredFieldValidator>
                    <br />
                    <br />
                       
                    
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="phone" style="width: 128px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Font-Size="Small" ForeColor="Red">Enter phone number</asp:RequiredFieldValidator>
                    <br />
                    <br />
                       
                    
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
                   
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Font-Size="Small" ForeColor="Red">Enter password</asp:RequiredFieldValidator>
                   
                    <br />
               <br />
                        <asp:Button ID="Button1" runat="server" Text="Sign Up" CssClass="btn" style="background-color:rgb(95, 190, 142);color:white;width:100px;" OnClick="Button1_Click" />
                    &nbsp;
                   <br />
                   <asp:Label ID="Label6" runat="server"  style="color:rgb(95, 190, 142);"></asp:Label>
                    </div>
                </div>
                <div id="samthree" class="col-md-2" >
                   
                </div>
                
            </div>
               <div id="footer" style="text-align:center;width:100%;background-color:#B9B9B9;color:white;height:50px;padding-top:20px;">
            Web Application designed by Sumayya kp<span style="color:rgb(95, 190, 142)">@</span>2019
        </div>
        </div>


    </form>
</body>
</html>
