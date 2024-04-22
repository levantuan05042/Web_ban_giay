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
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Databasee db = new Databasee();
            if (string.IsNullOrEmpty(txtTendaydu.Text))
            {
                lb_tendd.Text = "Vui lòng nhập tên đầy đủ.";
                return;
            }
            else
            {
                lb_tendd.Text = "";
            }
            if (string.IsNullOrEmpty(txtDienThoai.Text))
            {
                lb_dt.Text = "Vui lòng nhập số điện thoại.";
                return;
            }
            else
            {
                lb_dt.Text = "";
            }
            if (!System.Text.RegularExpressions.Regex.IsMatch(txtDienThoai.Text, @"^\d+$"))
            {
                lb_dt.Text = "Số điện thoại chỉ được nhập số!";
                return;
            }
            else
            {
                lb_dt.Text = "";
            }
            if ((txtDienThoai.Text.StartsWith("0") && txtDienThoai.Text.Length == 10) || (txtDienThoai.Text.StartsWith("84") && txtDienThoai.Text.Length == 11))
            {
                lb_dt.Text = "";
            }
            else
            {
                lb_dt.Text = "Số điện thoại không đúng định dạng";
                return;
            }
            if (string.IsNullOrEmpty(txtTendangnhap.Text))
            {
                lb_tendn.Text = "Vui lòng nhập tên đăng nhập.";
                return;
            }
            else
            {
                lb_tendn.Text = "";
            }
            if (string.IsNullOrEmpty(txtMatKhau.Text))
            {
                lb_mk.Text = "Vui lòng nhập mật khẩu.";
                return;
            }
            else
            {
                lb_mk.Text = "";
            }
            if (string.IsNullOrEmpty(txtDiaChi.Text))
            {
                lb_dc.Text = "Vui lòng nhập địa chỉ.";
                return;
            }
            else
            {
                lb_dc.Text = "";
            }
            if (db.CheckTenDangNhap(txtTendangnhap.Text))
            {
                lblMessage.Text = "Tên đăng nhập đã tồn tại. Vui lòng nhập tên đăng nhập khác.";
                txtTendangnhap.Text = "";
                return;
            }

            Nguoidung newUser = new Nguoidung();
            newUser.Tendaydu = txtTendaydu.Text;
            newUser.DienThoai = txtDienThoai.Text;
            newUser.TenDangNhap = txtTendangnhap.Text;
            newUser.MatKhau = txtMatKhau.Text;
            newUser.DiaChi = txtDiaChi.Text;
            newUser.Mode = "User";
            db.RegisterUser(newUser);
            txtTendaydu.Text = "";
            txtDienThoai.Text = "";
            txtTendangnhap.Text = "";
            txtMatKhau.Text = "";
            txtDiaChi.Text = "";
            Response.Redirect("dangnhap.aspx");
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            txtTendaydu.Text = "";
            txtDienThoai.Text = "";
            txtTendangnhap.Text = "";
            txtMatKhau.Text = "";
            txtDiaChi.Text = "";
            lb_dc.Text = "";
            lb_mk.Text = "";
            lb_tendn.Text = "";
            lb_dt.Text = "";
            lb_tendd.Text = "";
        }
    }
}