using BTVN_LeVanTuan.Models;
using dangnhap.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTVN_LeVanTuan.WebForms
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txt_user.Text))
            {
                lb_nhapten.Text = "Vui lòng nhập tên đăng nhập.";
                return;
            }
            else
            {
                lb_nhapten.Text = "";
            }
            if (string.IsNullOrEmpty(txt_pass.Text))
            {
                lb_matkhau.Text = "Vui lòng nhập mật khẩu.";
                return;
            }
            else
            {
                lb_matkhau.Text = "";
            }
            Databasee db = new Databasee();
            bool isValidUser = db.LoginUser(txt_user.Text, txt_pass.Text);

            if (isValidUser)
            {
                Nguoidung user = db.GetUser(txt_user.Text);
                Session["User"] = user;
                if (user.Mode == "Admin")
                {
                    Response.Redirect("ThemSuaXoa.aspx");
                }
                else if (user.Mode == "User")
                {
                    Response.Redirect("WebForm1.aspx");
                }
            }
            else
            {
                txt_user.Text = "";
                txt_pass.Text = "";
                lb_nhapten.Text = "";
                lb_matkhau.Text = "";
                lblMessage.Text = "Đăng nhập sai. Vui lòng thử lại.";
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("DangKy.aspx");
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            txt_pass.Text = "";
            txt_user.Text = "";
            lb_nhapten.Text = "";
            lb_matkhau.Text = "";
        }
    }
}