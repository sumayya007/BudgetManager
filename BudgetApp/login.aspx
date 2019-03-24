<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BudgetApp.login" UnobtrusiveValidationMode="none" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-3.2.1.min.js"></script> 
<script src="js/bootstrap.js"></script>


<link href="css/bootstrap.css" rel="stylesheet"/>
<link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/style.css" type="text/css"/>
    <style type="text/css">
       #right {
   
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
<body >
     
    <form id="form1" runat="server">
        <div>
            <div id="samwrap" class="col-md-12">
                <div class="col-md-12">
                   <span><asp:Image ID="Image1" runat="server" src="images/logo.jpg" alt="logo" Height="50px" Width="50px" />
Budget Manager</span>    
                </div>
                <br />
                <br />
                <br />
                <div id="samone" class="col-md-2" >
                  
                </div>
                <div id="samtwo" class="col-md-8" style="height:250px;">
                   <div id="left">
                       <asp:Label ID="Label1" runat="server" Text="Login" Font-Bold="True" Font-Size="Large" style="color:rgb(95, 190, 142);" ></asp:Label>
    <br /><br />
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red">Enter username</asp:RequiredFieldValidator>
           <br />
        <br />
       
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Password"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="Red">Enter password</asp:RequiredFieldValidator>
       <br />
        <br />
                <asp:Button ID="Button1" runat="server" Text="Sign in" CssClass="btn" style="background-color:rgb(95, 190, 142);color:white;width:100px;" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" style="color:rgb(95, 190, 142);"></asp:Label>
          
    
                   </div>
                    <div id="right" style="width:60%;height:100%;float:right;padding:10px;background-color:rgb(95, 190, 142);color:white;">
                      <div id="text" style="padding-left:30px;">
               <h2>Hello Friend,</h2>
               <p>
                   Enter your personal details</p>
                <p>
                   and start your journey with us
               </p>
               <br />
                <asp:HyperLink ID="HyperLink1" runat="server" style="border:1px white solid;padding:4px;border-radius:8px;color:white;text-align:center;" NavigateUrl="~/register.aspx" Width="100px">Sign Up</asp:HyperLink>
               
           </div>
                    </div>
                </div>
                <div id="samthree" class="col-md-2" >
                   
                </div>
                
            </div>
            <div id="footer" style="text-align:center;width:100%;background-color:#B9B9B9;color:white;height:50px;padding:20px">
          Web Application designed by Sumayya kp<span style="color:rgb(95, 190, 142)">@</span>2019
        </div>
        </div>
         
                        
      
    </form>
    </body>
</html>
