using Car.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car.Pages
{
	public partial class Tips : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{


			//GridView1.Visible = true;
			if (!IsPostBack)
			{
				DropDownListFabio.Items.Insert(0, new ListItem("--Select Tip", "0"));
				CarregaDropDownlist();
				if (GridView1.DataSource == null)
				{
					GridView1.DataSource = new string[] { };
				}
				GridView1.DataBind();
			}
		}


		private void CarregaDropDownlist()
		{
			using (var db = new DefaultConection())
			{
				var query = (from b in db.Regis
							 select b.cb).Distinct();

				foreach (var item in query)
				{


					DropDownListFabio.Items.Add(new ListItem(item));

				}
			}
		}

		protected void DropDownListFabio_TextChanged(object sender, EventArgs e)
		{
			var valor = Convert.ToInt32(DropDownListFabio.SelectedItem.Value);

			using (var db = new DefaultConection())
			{
				//var query = (from brand in db.CarBrands
				//			 join models in db.CarModels
				//			 on brand.CarBrandId equals models.CarBrandId
				//			 where brand.CarBrandId == valor
				//			 select new { Brand = brand, Models = models });

				var query = (from regis in db.Regis
							 join manu in db.MaintenanceTips
							   on regis.cb equals manu.carbrandId.ToString()
							 where manu.carbrandId == valor
							 select new { Manu = manu, Regis = regis });
				foreach (var item in query)
				{
					item.Manu.tip = item.Manu.tip + "\teach\t" + item.Manu.km + "\tkm";

				}
				GridView1.DataSource = query.ToList();

				GridView1.DataBind();

			}

		}
	}
}