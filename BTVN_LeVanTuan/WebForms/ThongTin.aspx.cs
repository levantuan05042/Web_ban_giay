using dangnhap.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTVN_LeVanTuan.WebForms
{
    public partial class ThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (Session["User"] != null)
                {
                    Nguoidung user = (Nguoidung)Session["User"];
                    Response.Write("Tên đầy đủ: " + user.Tendaydu + "<br/>");
                    Response.Write("Điện thoại: " + user.DienThoai + "<br/>");
                    Response.Write("Tên đăng nhập: " + user.TenDangNhap + "<br/>");
                    Response.Write("Địa chỉ: " + user.DiaChi + "<br/>");
                }
                else
                {
                    Response.Redirect("DangNhap.aspx");
                }
            }

        }
    }
}