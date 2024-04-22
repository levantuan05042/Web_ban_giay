using BTVN_LeVanTuan.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTVN_LeVanTuan.WebForms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProductData();
            }
            if (Session["User"] != null)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "HideLoginLink", "<style>.header-top__icon ul li a[href='DangNhap.aspx'], .header-top__icon ul li a[href='DangKy.aspx'] { display: none; }</style>", false);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "UpdateNavLinks", "<style>.header-top__icon ul li a[href='DangNhap.aspx'], .header-top__icon ul li a[href='DangKy.aspx'] { display: none; } .header-top__icon ul li a[href='ThongTin.aspx'], .header-top__icon ul li a[href='DangXuat.aspx'] { display: block; }</style>", false);
            }


        }
        private void LoadProductData()
        {
            string connectionString = "server=.\\SQLEXPRESS;database=QL_web_banhang;user=sa;password=05042002";

            using (Database db = new Database(connectionString))
            {
                DataTable productsTable = db.GetAll();

                if (productsTable.Rows.Count > 0)
                {
                    foreach (DataRow row in productsTable.Rows)
                    {
                        string productName = row["TenSanPham"].ToString();
                        string productImage = row["HinhAnh"].ToString();
                        decimal productPrice = Convert.ToDecimal(row["Gia"]);
                        string productHtml = $@"
<div class='content__products'>
    <a href='ChiTietSanPham.aspx?MaSanPham={row["MaSanPham"]}'>
        <img src='{productImage}' alt='' />
        <p>{productName}</p>
        <p class='price-product'>{productPrice:0,0} đ</p>
    </a>
</div>";

                        mainContentProduct.Controls.Add(new LiteralControl(productHtml));
                    }
                }
            }
        }
    }
}