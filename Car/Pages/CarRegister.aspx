<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarRegister.aspx.cs" Inherits="Car.Pages.CarRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Car Register</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
	<link href="../Content/carregister.css" rel="stylesheet" />

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" >Choose One Option</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="CarRegister.aspx">Car Register <span class="sr-only">(current)</span></a>
				<a class="nav-item nav-link" href="ListAll.aspx">List ALL</a>
				<a class="nav-item nav-link" href="Tips.aspx">TIPS</a>				
				<a class="nav-item nav-link" href="#">Outro</a>	
			</div>
			
		</div>
	</nav>
	<br />
	<br />
	<form id="form1" runat="server">
		<div class="auto-style3">
			<h1 class="text-center"><span class="badge badge-secondary">CAR REGISTRATION </span></h1>
			<img src="../Images/CARLOGO.jpg" alt="..." class="img-fluid	" />
		</div>
		<div class="container-fluid">
			<div class="dropdown">
				<asp:DropDownList class="btn btn-secondary dropdown-toggle" ID="DropDownList1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" runat="server" AutoPostBack="True">
				</asp:DropDownList>
				<asp:DropDownList class="btn btn-secondary dropdown-toggle justify-content-between" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" ID="DropDownList2" runat="server" AutoPostBack="True">
				</asp:DropDownList>

			</div>
			<br />
			<div class="form-group">
				<label class="font-weight-bold">Car Year</label>
				<asp:TextBox class="form-control" ID="txtCarYear" runat="server"></asp:TextBox>

				<asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" ControlToValidate="txtCarYear"
					ErrorMessage="Year is required field"></asp:RequiredFieldValidator>
			</div>
			<div class="form-group">
				<label class="font-weight-bold">Milage Per KM </label>
				<asp:TextBox class="form-control" ID="txtMilage" runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMilage"
					ErrorMessage="Milage is required field"></asp:RequiredFieldValidator>
			</div>
			<br />
			<asp:Button class="btn btn-primary btn-lg btn-block" ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
			<br />
			<asp:Label class="alert alert-primary" ID="LabelSucesso" runat="server" Visible="false"></asp:Label>
			<asp:Label class="alert alert-danger" ID="LabelError" runat="server" Visible="false"></asp:Label>
			<br />
		</div>
		<br />
	</form>
</body>
</html>
