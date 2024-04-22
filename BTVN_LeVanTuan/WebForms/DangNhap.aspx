<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="BTVN_LeVanTuan.WebForms.DangNhap" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Nhập</title>
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
                            <h5 class="card-title">Đăng nhập</h5>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="txt_user">Tên đăng nhập</label>
                                <asp:TextBox ID="txt_user" runat="server" CssClass="form-control" Width="100%" placeholder="Nhập tên đăng nhập"></asp:TextBox>
                                <asp:Label ID="lb_nhapten" runat="server" ForeColor="Red"></asp:Label>
                            </div>

                            <div class="form-group">
                                <label for="txt_pass">Mật khẩu</label>
                                <asp:TextBox ID="txt_pass" runat="server" CssClass="form-control" TextMode="Password" Width="100%" placeholder="Nhập mật khẩu"></asp:TextBox>
                                <asp:Label ID="lb_matkhau" runat="server" ForeColor="Red"></asp:Label>
                            </div>

                            <div class="form-group">
                                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Đăng nhập" CssClass="btn btn-primary" />
                                <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Đăng kí" CssClass="btn btn-success" />
                                <asp:Button ID="btnExit" runat="server" OnClick="btnExit_Click" Text="Làm mới" CssClass="btn btn-secondary" />
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
