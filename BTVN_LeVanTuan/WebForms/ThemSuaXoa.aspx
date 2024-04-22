<%@ Page Title="" Language="C#" MasterPageFile="~/Sites/Site1.Master" AutoEventWireup="true" CodeBehind="ThemSuaXoa.aspx.cs" Inherits="BTVN_LeVanTuan.WebForms.ThemSuaXoa" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        * {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0;
    box-sizing: border-box;
}


/* ----------- Start Header ---------- */
.header-top {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 30px;
}

.header-top .header-top__logo img {
    width: 150px;
}

.header-top .header-top__menu ul li {
    display: inline-block;
    margin: 30px;
    cursor: pointer;
}

.header-top .header-top__menu ul li a {
    text-decoration: none;
    font-size: 18px;
    color: #000;
    font-weight: 600;
    font-style: italic;
}

.header-top .header-top__menu ul li a:hover {
    color: red;
    border-bottom: 3px solid black;
}

.header-top .header-top__icon ul li {
    display: inline-block;
    margin: 30px;
    cursor: pointer;
}

.header-top .header-top__icon ul li a {
    font-size: 16px;
    color: #000;
}

.header-main {
    margin-top: 50px;
    display: flex;
    justify-content: space-between;
}

.header-main .header-main__menu-left li {
    padding: 16.5px;
    list-style: none;
    border: 1px solid gray;
}

.header-main .header-main__menu-left li a {
    margin: 25px;
    font-size: 18px;
    color: #000;
    text-decoration: none;
}

.header-main .header-main__menu-left li a:hover {
    color: red;
}

.header-main .header-main__menu-left .title__menu {
    text-transform: uppercase;
    background-color: rgb(93, 93, 231);
}

.header-main .header-main__menu-left .title__menu i{
    color: white;
}

.header-main .header-main__banner img {
    width: 900px;
}

/* ----------- End Header ---------- */

        .product-management {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .table th,
        .table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        
/* ----------- Start Footer ---------- */
footer {
    background-color: cornflowerblue;
    padding: 15px;
    margin-top: 50px; /* Điều chỉnh khoảng cách giữa nội dung và footer */
    position: fixed; /* Cố định vị trí */
    bottom: 0; /* Đặt ở phía dưới cùng của trang */
    width: 100%; /* Chiều rộng của footer là 100% của trang */
    z-index: 100; /* Đặt z-index để đảm bảo hiển thị trên phần còn lại của trang */
}

footer p {
    text-align: center;
    color: white;
    font-weight: 600;
    font-style: italic;
    font-size: 16px;
}
/* ----------- End Footer ---------- */

.header-top__icon ul li a[href='Thongtin.aspx'] {
    display: none;
}
.header-top__icon ul li a[href='DangXuat.aspx'] {
    display: none;
}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <div class="product-management">
            <!-- Form thêm/sửa sản phẩm -->
            <div class="form-group">
                <h2>Thông tin sản phẩm</h2>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="txtMaSanPham">Mã sản phẩm</label>
                        <asp:TextBox ID="txtMaSanPham" runat="server" CssClass="form-control" placeholder="Mã sản phẩm"></asp:TextBox>
                        <asp:Label ID="lbmsp" runat="server" ForeColor="Red"></asp:Label>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="txtTenSanPham">Tên sản phẩm</label>
                        <asp:TextBox ID="txtTenSanPham" runat="server" CssClass="form-control" placeholder="Tên sản phẩm"></asp:TextBox>
                        <asp:Label ID="lbtensp" runat="server" ForeColor="Red"></asp:Label>
                    </div>
                </div>
                <div class="form-row">
    <div class="form-group col-md-6">
        <label for="txtHanSanPham">Hạng sản phẩm</label>
        <asp:TextBox ID="txtHanSanPham" runat="server" CssClass="form-control" placeholder="Hạn sản phẩm"></asp:TextBox>
        <asp:Label ID="lbhsp" runat="server" ForeColor="Red"></asp:Label>
    </div>
    <div class="form-group col-md-6">
        <label for="txtMota">Mô tả</label>
        <asp:TextBox ID="txtMota" runat="server" CssClass="form-control" placeholder="Mô tả"></asp:TextBox>
        <asp:Label ID="lbmt" runat="server" ForeColor="Red"></asp:Label>
    </div>
</div>
<div class="form-row">
    <div class="form-group col-md-6">
        <label for="txtGia">Giá</label>
        <asp:TextBox ID="txtGia" runat="server" CssClass="form-control" placeholder="Giá"></asp:TextBox>
        <asp:Label ID="lbg" runat="server" ForeColor="Red"></asp:Label>
    </div>
    <div class="form-group col-md-6">
        <label for="txtSoLuong">Số lượng</label>
        <asp:TextBox ID="txtSoLuong" runat="server" CssClass="form-control" placeholder="Số lượng"></asp:TextBox>
        <asp:Label ID="lblg" runat="server" ForeColor="Red"></asp:Label>
    </div>
</div>
<div class="form-row">
</div>


                <asp:FileUpload ID="fileProductImage" runat="server" CssClass="form-control" />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/img/"+Eval("HinhAnh") %>' Width="280px" />
            

                <asp:Label ID="lba" runat="server" ForeColor="Red"></asp:Label>
            

            </div>

            <!-- Nút thêm/sửa/xóa -->
            <div class="form-group">
                <asp:Button ID="btnThem" runat="server" Text="Thêm" CssClass="btn btn-primary" OnClick="btnThem_Click" />
                <asp:Button ID="btnSua" runat="server" Text="Làm mới"  CssClass="btn btn-success" OnClick="btnSua_Click"/>
            </div>

            <!-- Danh sách sản phẩm -->
            <h2>Danh sách sản phẩm</h2>
            <asp:GridView ID="gvProductList" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSanPham" CssClass="table" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvProductList_SelectedIndexChanged" OnRowDeleting="gvProductList_RowDeleting" OnRowCancelingEdit="gvProductList_RowCancelingEdit" OnRowEditing="gvProductList_RowEditing" OnRowUpdating="gvProductList_RowUpdating">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MaSanPham" HeaderText="Mã sản phẩm" SortExpression="MaSanPham" />
                    <asp:BoundField DataField="TenSanPham" HeaderText="Tên sản phẩm" SortExpression="TenSanPham" />
                    <asp:BoundField DataField="HanSanPham" HeaderText="Hạn sản phẩm" SortExpression="HanSanPham" />
                    <asp:BoundField DataField="Gia" HeaderText="Giá" SortExpression="Gia" />
                    <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" SortExpression="SoLuong" />
                    <asp:BoundField DataField="Mota" HeaderText="Mô tả" />
                    <asp:TemplateField HeaderText="Hình Ảnh">
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/img/"+Eval("HinhAnh") %>' Width="280px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" DeleteText="Xóa" HeaderText="Chức năng" ShowDeleteButton="True" EditText="Sửa" InsertText="" ShowEditButton="True" CancelText="Hủy" UpdateText="Cập nhật" />
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
    </main>
</asp:Content>
