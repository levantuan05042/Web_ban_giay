
<%@ Page Title="" Language="C#" MasterPageFile="~/Sites/Site1.Master" AutoEventWireup="true" CodeBehind="Sanpham.aspx.cs" Inherits="BTVN_LeVanTuan.WebForms.Sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

/* ----------- Start Main ---------- */

main {
    margin-top: 80px;
    margin-bottom: 50px;
}

.title-content .title-content__product{
    font-size: 35px;
    text-align: center;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}

.title-content .title-content__sub-product {
    font-size: 17px;
    color: gray;
    text-align: center;
    margin-bottom: 40px;
}

.main-content__product {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr 1fr;
    gap: 20px;
    
}
#ContentPlaceHolder1_mainContentProduct{
    display: grid;
grid-template-columns: 1fr 1fr 1fr 1fr;
gap: 20px;
    
}

.main-content__product .content__products img {
    width: 280px;
}
.content__products a{
    color: black;
    text-decoration: none;
}
.main-content__product .content__products p {
    text-align: center;
    font-size: 17px;
    font-style: italic;
}

.main-content__product .content__products .price-product {
    text-align: center;
    font-size: 17px;
    color: red;
    font-weight: bold;
}

/* ----------- End Main ---------- */

/* ----------- Start Footer ---------- */
footer {
    background-color: cornflowerblue;
    padding: 15px;
}

footer p {
    text-align: center;
    color: white;
    font-weight: 600;
    font-style: italic;
    font-size: 16px;
}

/* ----------- End Footer ---------- */
.header-top__icon ul li a[href='ThongTin.aspx'] {
    display: none;
}
.header-top__icon ul li a[href='DangXuat.aspx'] {
    display: none;
}

    </style>
    <div class="header-main">
  <div class="header-main__menu-left">
    <ul>
      <li class="title__menu">
        <a href="WebForm1.aspx">Danh mục giày</a>
        <i class="fa-solid fa-bars"></i>
      </li>
      <li><a href="Nike.aspx">Giày Nike cao cấp</a></li>
      <li><a href="Adidass.aspx">Giày Adidas cao cấp</a></li>
      <li><a href="VanS.aspx">Giày VanS</a></li>
      <li><a href="Balenciaga.aspx">Giày Balenciaga</a></li>
      <li><a href="Jordan.aspx">Giày Jordan</a></li>
        <li><a href="Khac.aspx">Khác</a></li>
    </ul>
  </div>

  <div class="header-main__banner">
    <img src="../img/slider_2.jpg" alt="" />
  </div>
</div>
    <main>
        <div class="title-content">
          <h3 class="title-content__product">Sản phẩm</h3>           
          <div class="main-content__product">
              <asp:Panel ID="mainContentProduct" runat="server"></asp:Panel>
            
          </div>
        </div>
      </main>
</asp:Content>



