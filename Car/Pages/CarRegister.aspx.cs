using Car.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car.Pages
{
	public partial class CarRegister : System.Web.UI.Page
	{

		protected void Page_Load(object sender, EventArgs e)
		{

			if (!IsPostBack)
			{
				DropDownList1.Items.Insert(0, new ListItem("Select Car Brand ", "0"));
				DropDownList2.Items.Insert(0, new ListItem("Select Car Model", "0"));
				CarregaDropDownlists();
				ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
			}
		
			
		}

		private void CarregaDropDownlists()
		{
			using (var db = new DefaultConection())
			{
				var query = (from b in db.CarBrands
							 select b.CarBrandId).Distinct();

				foreach (var item in query)
				{

					DropDownList1.Items.Add(new ListItem(item.ToString()));


				}
				var query1 = (from c in db.CarModels
							  select c.CarModelId).Distinct();
				foreach (var item in query1)
				{
					DropDownList2.Items.Add(new ListItem(item.ToString()));
				}
			}
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			//lembrar de tratar os campos e duplicados
			//trate todos os erros aqui...

			if (!Page.IsValid)
			{
				LabelError.Visible = true;
				return;
			}

			using (var db = new DefaultConection())
			{
				Regi rg = new Regi
				{
					cb = DropDownList1.SelectedValue,
					cm = DropDownList2.SelectedValue,
					cy = txtCarYear.Text,
					m = txtMilage.Text
				};
				db.Regis.Add(rg);
				db.SaveChanges();
				LabelSucesso.Visible = true;
				LabelSucesso.Text = "Register Inserted";

				txtCarYear.Text = "";
				txtMilage.Text = "";
				DropDownList1.SelectedIndex = 0;
				DropDownList2.SelectedIndex = 0;
			}


			#region Apagar este Parte do Codigo
			//string constring = "Data Source=KARANAULAKH\\SQLEXPRESS;Initial Catalog=CARMODELS;Integrated Security=True";

			//SqlConnection connect = new SqlConnection(constring);
			//SqlCommand command = new SqlCommand("Insert into Regis values(@cb,@cm,@cy,@m)", connect);
			//command.Parameters.AddWithValue("@cb", DropDownList1.SelectedItem.Value);
			//command.Parameters.AddWithValue("@cm", DropDownList2.SelectedItem.Value);
			//command.Parameters.AddWithValue("@cy", txtCarYear.Text);
			//command.Parameters.AddWithValue("@m", txtMilage.Text);
			//connect.Open();
			//command.ExecuteNonQuery();
			//Label.Text = "successful";
			//DropDownList1.SelectedItem.Value = "";
			//DropDownList2.SelectedItem.Value = "";
			//txtCarYear.Text = "";
			//txtMilage.Text = "";
			//connect.Close();
			#endregion
		}

		protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
		{
			LabelSucesso.Visible = false;
			LabelError.Visible = false;
		}

		protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
		{
			LabelSucesso.Visible = false;
			LabelError.Visible = false;
		}

		
	}
}