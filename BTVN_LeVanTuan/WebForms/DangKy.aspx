
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="BTVN_LeVanTuan.WebForms.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Ký</title>
    <!-- Thêm các thư viện Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title">Đăng ký</h5>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="txtTendaydu">Tên đầy đủ</label>
                                <asp:TextBox ID="txtTendaydu" runat="server" CssClass="form-control" Width="100%" placeholder="Nhập tên đầy đủ"></asp:TextBox>
                                <asp:Label ID="lb_tendd" runat="server" ForeColor="Red"></asp:Label>
                            </div>

                            <div class="form-group">
                                <label for="txtDienThoai">Điện thoại</label>
                                <asp:TextBox ID="txtDienThoai" runat="server" CssClass="form-control" Width="100%" placeholder="Nhập số điện thoại"></asp:TextBox>
                                <asp:Label ID="lb_dt" runat="server" ForeColor="Red"></asp:Label>
                            </div>

                            <div class="form-group">
                                <label for="txtTendangnhap">Tên đăng nhập</label>
                                <asp:TextBox ID="txtTendangnhap" runat="server" CssClass="form-control" Width="100%" placeholder="Nhập tên đăng nhập"></asp:TextBox>
                                <asp:Label ID="lb_tendn" runat="server" ForeColor="Red"></asp:Label>
                            </div>

                            <div class="form-group">
                                <label for="txtMatKhau">Mật khẩu</label>
                                <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password" CssClass="form-control" Width="100%" placeholder="Nhập mật khẩu"></asp:TextBox>
                                <asp:Label ID="lb_mk" runat="server" ForeColor="Red"></asp:Label>
                            </div>

                            <div class="form-group">
                                <label for="txtDiaChi">Địa chỉ</label>
                                <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control" Width="100%" placeholder="Nhập địa chỉ"></asp:TextBox>
                                <asp:Label ID="lb_dc" runat="server" ForeColor="Red"></asp:Label>
                            </div>

                            <div class="form-group">
                                <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Đăng ký" CssClass="btn btn-success" />
                                <asp:Button ID="btnlm" runat="server" OnClick="btnExit_Click" Text="Làm mới" CssClass="btn btn-secondary" />
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Thêm các thư viện Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UoVpPj2u2lw81lkgKN3epJKL4ZiGcxXxj5g6RTt8+1FZLl5vP4pbcMO4MiwQ+o1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>

