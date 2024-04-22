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
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Kiểm tra xem có tham số sản phẩm được truyền từ trang danh sách không
                if (Request.QueryString["MaSanPham"] != null)
                {
                     LoadProductDetails(Request.QueryString["MaSanPham"]);
                }
            }
            if (Session["User"] != null)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "UpdateNavLinks", "<style>.header-top__icon ul li a[href='DangNhap.aspx'], .header-top__icon ul li a[href='DangKy.aspx'] { display: none; } .header-top__icon ul li a[href='ThongTin.aspx'], .header-top__icon ul li a[href='DangXuat.aspx'] { display: block; }</style>", false);

                Page.ClientScript.RegisterStartupScript(this.GetType(), "HideLoginLink", "<style>.header-top__icon ul li a[href='DangNhap.aspx'], .header-top__icon ul li a[href='DangKy.aspx'] { display: none; }</style>", false);
            }

        }
        private void LoadProductDetails(string maSanPham)
        {
            // Thay đổi chuỗi kết nối cơ sở dữ liệu theo cấu hình của bạn
            string connectionString = "server=.\\SQLEXPRESS;database=QL_web_banhang;user=sa;password=05042002";

            using (Database db = new Database(connectionString))
            {
                // Sử dụng phương thức GetProductDetails để lấy thông tin chi tiết sản phẩm
                DataTable productDetails = db.GetProductDetails(maSanPham);

                // Hiển thị thông tin chi tiết sản phẩm trên trang web
                if (productDetails.Rows.Count > 0)
                {
                    DataRow row = productDetails.Rows[0];

                    // Cập nhật thông tin hình ảnh, tên, mô tả, giá từ code-behind
                    productImage.Src = row["HinhAnh"].ToString();
                    productName.InnerText = row["TenSanPham"].ToString();
                    productDescription.InnerText = row["MoTa"].ToString();
                    productPrice.InnerText = $"{Convert.ToDecimal(row["Gia"]):0,0} đ";
                }
            }
        }
    }
}
