<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListAll.aspx.cs" Inherits="Car.Pages.ListAll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>List All</title>
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
				<a class="nav-item nav-link" href="CarRegister.aspx">Car Register </a>
				<a class="nav-item nav-link active" href="ListAll.aspx">List ALL<span class="sr-only">(current)</span></a>
				<a class="nav-item nav-link" href="Tips.aspx">TIPS</a>				
				<a class="nav-item nav-link" href="#">Outro</a>	
			</div>
			
		</div>
	</nav>
<br />
	<br />
	<form id="form1" runat="server">
		<div class="auto-style3">
			<h1 class="text-center"><span class="badge badge-secondary">LIST ALL </span></h1>
			<img src="../Images/CARLOGO.jpg" alt="..." class="img-fluid	" />
		</div>
		<div class="container-fluid">

			<h2>Models </h2>
			<br />
			<br />

			<asp:GridView ID="GridViewModels" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" EmptyDataText="No records Found" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="100" Width="100%">
				<AlternatingRowStyle BackColor="White" />
				<Columns>
					<asp:BoundField DataField="Model.CarModelId" HeaderText="Car Model ID" />
					<asp:BoundField DataField="Model.CarModel1" HeaderText="Car Model" />
					<asp:BoundField DataField="Model.CarBrandId" HeaderText="Car Brand ID" />
				</Columns>
				<EditRowStyle BackColor="#2461BF" />
				<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
				<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
				<RowStyle BackColor="#EFF3FB" />
				<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
				<SortedAscendingCellStyle BackColor="#F5F7FB" />
				<SortedAscendingHeaderStyle BackColor="#6D95E1" />
				<SortedDescendingCellStyle BackColor="#E9EBEF" />
				<SortedDescendingHeaderStyle BackColor="#4870BE" />
			</asp:GridView>
			<br />
			<br />

			<br />

			<h2>Brands </h2>
			<br />
			<br />
			<asp:GridView ID="GridViewBrands" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" EmptyDataText="No records Found" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="100" Width="100%">
				<AlternatingRowStyle BackColor="White" />
				<Columns>
					<asp:BoundField DataField="Brand.CarBrandId" HeaderText="Car Brand ID" />
					<asp:BoundField DataField="Brand.CarBrand1" HeaderText="Car Brand " />

				</Columns>
				<EditRowStyle BackColor="#2461BF" />
				<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
				<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
				<RowStyle BackColor="#EFF3FB" />
				<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
				<SortedAscendingCellStyle BackColor="#F5F7FB" />
				<SortedAscendingHeaderStyle BackColor="#6D95E1" />
				<SortedDescendingCellStyle BackColor="#E9EBEF" />
				<SortedDescendingHeaderStyle BackColor="#4870BE" />
			</asp:GridView>

		</div>
	</form>
</body>
</html>
