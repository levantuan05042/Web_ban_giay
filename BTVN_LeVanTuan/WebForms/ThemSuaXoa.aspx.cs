using BTVN_LeVanTuan.Models;
using De1_QLSach.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTVN_LeVanTuan.WebForms
{
    public partial class ThemSuaXoa : System.Web.UI.Page
    {
        private Database database;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProductList();
            }
            if (Session["User"] != null)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "UpdateNavLinks", "<style>.header-top__icon ul li a[href='DangNhap.aspx'], .header-top__icon ul li a[href='DangKy.aspx'] { display: none; } .header-top__icon ul li a[href='ThongTin.aspx'], .header-top__icon ul li a[href='DangXuat.aspx'] { display: block; }</style>", false);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "HideLoginLink", "<style>.header-top__icon ul li a[href='DangNhap.aspx'], .header-top__icon ul li a[href='DangKy.aspx'] { display: none; }</style>", false);
            }
        }
        private void LoadProductList()
        {
            DataTable productList = database.Sanpham();
            gvProductList.DataSource = productList;
            gvProductList.DataBind();
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            database = new Database("server=.\\SQLEXPRESS;database=QL_web_banhang;user=sa;password=05042002");
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            database.Dispose();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string maSanPham = txtMaSanPham.Text;
            if (string.IsNullOrEmpty(txtMaSanPham.Text))
            {
                lbmsp.Text = "Vui lòng nhập mã sản phẩm.";
                return;
            }
            else
            {
                lbmsp.Text = "";
            }
            if (database.CheckMasp(txtMaSanPham.Text))
            {
                lbmsp.Text = "Mã sản phẩm đã tồn tại. Vui lòng nhập mã sản phẩm khác.";
                txtMaSanPham.Text = "";
                return;
            }
            string tenSanPham = txtTenSanPham.Text;
            if (string.IsNullOrEmpty(txtTenSanPham.Text))
            {
                lbtensp.Text = "Vui lòng nhập tên sản phẩm.";
                return;
            }
            else
            {
                lbtensp.Text = "";
            }
            string hanSanPham = txtHanSanPham.Text;
            if (string.IsNullOrEmpty(txtHanSanPham.Text))
            {
                lbhsp.Text = "Vui lòng nhập hãng sản phẩm.";
                return;
            }
            else
            {
                lbhsp.Text = "";
            }
            string moTa = txtMota.Text;
            if (string.IsNullOrEmpty(txtMota.Text))
            {
                lbmt.Text = "Vui lòng nhập mô tả sản phẩm.";
                return;
            }
            else
            {
                lbmt.Text = "";
            }
            if (string.IsNullOrEmpty(txtGia.Text))
            {
                lbg.Text = "Vui lòng nhập giá sản phẩm.";
                return;
            }
            else
            {
                lbg.Text = "";
            }

            if (!System.Text.RegularExpressions.Regex.IsMatch(txtGia.Text, @"^\d+(\.\d+)?$"))
            {
                lbg.Text = "Giá sản phẩm chỉ được nhập số thập phân!";
                return;
            }
            else
            {
                lbg.Text = "";
            }

            decimal gia = Convert.ToDecimal(txtGia.Text);


            if (string.IsNullOrEmpty(txtSoLuong.Text))
            {
                lblg.Text = "Vui lòng nhập số lượng.";
                return;
            }
            else
            {
                lblg.Text = "";
            }

            if (!System.Text.RegularExpressions.Regex.IsMatch(txtSoLuong.Text, @"^\d+$"))
            {
                lblg.Text = "Số lượng chỉ được nhập số!";
                return;
            }
            else
            {
                lblg.Text = "";
            }

            int soLuong = Convert.ToInt32(txtSoLuong.Text);

            string hinhAnhFileName = UploadImage(fileProductImage);
            if (string.IsNullOrEmpty(hinhAnhFileName))
            {
                lba.Text = "Vui lòng chọn ảnh.";
                return;
            }
            else
            {
                lba.Text = "";
            }
            bool result = database.AddProduct(maSanPham, tenSanPham, hanSanPham, moTa, gia, soLuong, hinhAnhFileName);
            if (result)
            {
                LoadProductList();
                ClearInputControls();
            }
            else
            {
            }
            txtMaSanPham.Text = "";
            txtTenSanPham.Text = "";
            txtHanSanPham.Text = "";
            txtMota.Text = "";
            txtGia.Text = "";
            txtSoLuong.Text = "";
            lbg.Text = "";
            lbmsp.Text = "";
            lbtensp.Text = "";
            lbhsp.Text = "";
            lbmt.Text = "";
            lblg.Text = "";
            lba.Text = "";
            fileProductImage.Dispose();
        }
        private string UploadImage(FileUpload fileUpload)
        {
            if (fileUpload.HasFile)
            {
                try
                {
                    string fileName = Path.GetFileName(fileUpload.FileName);
                    string imgPath = Server.MapPath("~/img/") + fileName;
                    fileUpload.SaveAs(imgPath);
                    return "../img/" + fileName;
                }
                catch (Exception ex)
                {
                    return string.Empty;
                }
            }
            return string.Empty;
        }


        protected void btnSua_Click(object sender, EventArgs e)
        {
            txtMaSanPham.Text = "";
            txtTenSanPham.Text = "";
            txtHanSanPham.Text = "";
            txtMota.Text = "";
            txtGia.Text = "";
            txtSoLuong.Text = "";
            lbg.Text = "";
            lbmsp.Text = "";
            lbtensp.Text = "";
            lbhsp.Text = "";
            lbmt.Text = "";
            lblg.Text = "";
            lba.Text = "";
            fileProductImage.Dispose();
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
        
        }
        protected void gvProductList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string maSanPham = gvProductList.SelectedRow.Cells[0].Text;
            DataTable dt = database.GetProductDetails(maSanPham);
            if (dt.Rows.Count > 0)
            {
                txtMaSanPham.Text = dt.Rows[0]["MaSanPham"].ToString();
                txtTenSanPham.Text = dt.Rows[0]["TenSanPham"].ToString();
                txtHanSanPham.Text = dt.Rows[0]["HanSanPham"].ToString();
                txtMota.Text = dt.Rows[0]["Mota"].ToString();
                txtGia.Text = dt.Rows[0]["Gia"].ToString();
                txtSoLuong.Text = dt.Rows[0]["SoLuong"].ToString();
                string imageUrl = "~/img/" + dt.Rows[0]["HinhAnh"].ToString();
                Image1.ImageUrl = imageUrl;
            }

        }
        private void ClearInputControls()
        {           
        }
        protected void gvProductList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string maSanPham = gvProductList.DataKeys[e.RowIndex].Value.ToString();
            database.OpenConn();
            database.DeleteProduct(maSanPham);
            database.CloseConn();
            LoadProductList();
        }
        protected void gvProductList_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvProductList.EditIndex = e.NewEditIndex;
            LoadProductList();
        }
        protected void gvProductList_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string msp = gvProductList.DataKeys[e.RowIndex].Value.ToString();
            string tsp = ((TextBox)gvProductList.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string hangsp = ((TextBox)gvProductList.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string mota = ((TextBox)gvProductList.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            decimal dongia = Decimal.Parse(((TextBox)gvProductList.Rows[e.RowIndex].Cells[3].Controls[0]).Text);
            int soluong = Int32.Parse(((TextBox)gvProductList.Rows[e.RowIndex].Cells[4].Controls[0]).Text);
            FileUpload ha = (FileUpload)gvProductList.Rows[e.RowIndex].FindControl("FileUpload1");
            string tenanh = ha.FileName;
            string filepath = "../img/" + tenanh;
            ha.SaveAs(Server.MapPath("~/img/") + tenanh);
            Giay sp = new Giay(msp, tsp, hangsp, filepath, mota, dongia, soluong);
            database.UpdateProduct(sp);
            gvProductList.EditIndex = -1;
            LoadProductList();
        }

        protected void gvProductList_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvProductList.EditIndex = -1;
            LoadProductList();
        }
    }
}