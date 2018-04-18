using Car.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car.Pages
{
	public partial class ListAll : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			//GridView1.Visible = true;
			if (!IsPostBack)
			{

				//if (GridViewBrands.DataSource == null)
				//{
				//	GridViewBrands.DataSource = new string[] { };
				//}
				//else
				//{
				LoadGrids();

				//}
				//GridViewBrands.DataBind();
				//if (GridViewModels.DataSource == null)
				//{
				//	GridViewModels.DataSource = new string[] { };
				//}
				//GridViewModels.DataBind();
			}

		}

		private void LoadGrids()
		{
			using (var db = new DefaultConection())
			{
				var query = (from brand in db.CarBrands
							 select new { Brand = brand });

				GridViewBrands.DataSource = query.ToList();

				GridViewBrands.DataBind();

				var query1 = (from models in db.CarModels
							 select new { Model = models });

				GridViewModels.DataSource = query1.ToList();

				GridViewModels.DataBind();
			}
		}
	
	}
}