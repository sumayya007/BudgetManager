<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="new.aspx.cs" Inherits="BudgetApp._new" %>

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
}</style>
<script type="text/javascript">
    function Budget() {
     let balance=0;
const monthly=document.getElementById("monthly");
const btn=document.getElementById("submit");


            let expense = document.getElementById("exp").value;
            let budget = document.getElementById("budget").value;
            if (expense < budget) {
                balance = budget - expense;
            }
            else if (expense > budget) {
                balance = budget - expense;
            }
            else if (expense = budget) {
                balance = 0;
            }

            const expname = document.getElementById("expName").value;

            const totalline = document.getElementById("total");
            const week = document.createElement("div");

            week.id = "newdiv";
            week.classList.add("weekclass");
            week.innerHTML = `
	<span>${expname}</span>
	<span class="exptot">${expense}</span>
	<span class="budtot">${budget}</span>
	<span class="baltot">${balance}</span>
	
`;
           

            if (expense != "") {
                monthly.insertBefore(week, totalline);
            }
         
            document.getElementById("balance").textContent = balance;
             const c=document.getElementById("close");
c.addEventListener("click",function(){
	const m=document.getElementById("monthly");
	m.classList.remove("show-cart");
    document.getElementById("balance").textContent = "";
    
	
});
            monthly.classList.add("show-cart");
           
      
 

 //select month from dropdownlist
const e=document.getElementById("ddlmonth");
const m=document.getElementById("dropmonth");
var selected=e.options[e.selectedIndex].text;
m.textContent=selected;

console.log(selected);
//
}
</script>
</head>
<body>
    <form id="form1" runat="server">
       
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div id="wrapper">
                    
                        
<span id="leftheader">
<asp:Image ID="logo" runat="server" src="images/logo.jpg" alt="logo" Height="50px" Width="50px"/>
Budget Manager </span>
            <asp:HyperLink ID="HyperLink1" runat="server" style="padding-right:70px;padding-top:20px;"  Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300" NavigateUrl="~/login.aspx">Logout</asp:HyperLink>
                         
                             </div>

<div id="monthly"class="monthly">

<div>
<h4 style="text-align:center;padding-top:30px">Budget Analysis <strong><span id="dropmonth" style="color:rgb(54, 103, 180)">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong></h4>
<table id="new">
<tr >
   <th>Week</th>
   <th>Budget</th>
   <th>Expense</th>
   <th>Balance</th>
</tr></table></div>
<div id="total">

    <br />
</div>
<div id="final-submit" >
    <asp:Button ID="close" runat="server" Text="Close" class="btn btn-primary"/>
   
</div>
</div>
<div id="welcome">
Welcome <asp:Label ID="Label6" runat="server" ForeColor="#FF9900" Font-Bold="True" Font-Size="X-Large"></asp:Label></div>
<div id="main" class="well well-lg">

<div id="left col-md-4">
    <asp:DropDownList ID="ddlmonth" runat="server" onchange="run();">
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
    <asp:Label ID="Label1" runat="server" Text="Label">Enter your expense</asp:Label>
    <asp:TextBox ID="exp" runat="server" class="form-control" placeholder="Dhm"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Label">Enter your expense name</asp:Label>
    <asp:TextBox ID="expName" runat="server" class="form-control" placeholder="Expense name"></asp:TextBox>

<br/>
<br/>
    <asp:Button ID="submit" runat="server" Text="Add Expense" class="btn btn-primary" OnClick="submit_Click"/>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="View Monthly Report" CssClass="btn btn-danger" OnClick="Button1_Click" />
    
</div>
<div id="right col-md-4">
    <asp:Label ID="Label3" runat="server" Text="Label">Enter your budget amount</asp:Label>
    <asp:TextBox ID="budget" runat="server" class="form-control" placeholder="Dhm"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Label">Upload your bill</asp:Label>
    <asp:FileUpload ID="file1" runat="server" class="form-control"/>
    <asp:Label ID="Label5" runat="server" Text="Label">Your balance amount</asp:Label>

<br/>
<span id="balance" style="color:rgb(249, 161, 0);font-size:30px"></span><span style="color:#258725;font-size:20px">Dhms </span>
</div>
</div>
           
        
         <div id="footer" style="text-align:center;width:100%;background-color:#B9B9B9;color:white;height:50px;padding-top:20px;">
            Web Application designed by Sumayya kp<span style="color:rgb(95, 190, 142)">@</span>2019
        </div>
    </form>
</body>
</html>
