<%@ Page Title="" Language="C#" MasterPageFile="~/Sites/Site1.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="BTVN_LeVanTuan.WebForms.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        <style>
        @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap');
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

 /* Bổ sung CSS cho trang chi tiết sản phẩm */
  /* ... Các phần CSS trước đó ... */

/* CSS mới */
.tuan {
    font-family: 'Open Sans', sans-serif;
    background-color: #f5f5f5;
    padding: 50px 0;
}

.card-wrapper {
    max-width: 900px;
    margin: 0 auto;
    background-color: #fff;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

.card {
    display: flex;
}

.product-imgs {
    width: 50%;
    padding: 30px;
    box-sizing: border-box;
}

.img-display {
    overflow: hidden;
    border: 1px solid #ddd;
}

.img-showcase {
    display: flex;
}

.img-showcase img {
    min-width: 100%;
    transition: transform 0.5s ease;
}

.img-item {
    margin: 0.3rem;
    cursor: pointer;
}

.img-item:hover {
    opacity: 0.8;
}

.product-content {
    width: 50%;
    padding: 30px;
    box-sizing: border-box;
}

.product-title {
    font-size: 24px;
    text-transform: capitalize;
    font-weight: 700;
    position: relative;
    color: #12263a;
    margin: 1rem 0;
}

.product-title::after {
    content: "";
    position: absolute;
    left: 0;
    bottom: 0;
    height: 4px;
    width: 80px;
    background: #12263a;
}

.product-link {
    text-decoration: none;
    text-transform: uppercase;
    font-weight: 400;
    font-size: 0.9rem;
    display: inline-block;
    margin-bottom: 0.5rem;
    background: #256eff;
    color: #fff;
    padding: 0.3rem 0.6rem;
    transition: all 0.5s ease;
}

.product-link:hover {
    opacity: 0.9;
}

.product-rating {
    color: #ffc107;
}

.product-rating span {
    font-weight: 600;
    color: #252525;
}

.product-price {
    margin: 1rem 0;
    font-size: 1.2rem;
    font-weight: 700;
}

.product-price span {
    font-weight: 400;
    color: #256eff;
}

.product-detail h2 {
    text-transform: capitalize;
    color: #12263a;
    padding-bottom: 0.6rem;
}

.product-detail p {
    font-size: 0.9rem;
    padding: 0.3rem;
    opacity: 0.8;
}

.product-detail ul {
    margin: 1rem 0;
    font-size: 0.9rem;
}

.product-detail ul li {
    list-style: none;
    background: url(../img/checked.png) left center no-repeat;
    background-size: 18px;
    padding-left: 1.7rem;
    margin: 0.4rem 0;
    font-weight: 600;
    opacity: 0.9;
}

.product-detail ul li span {
    font-weight: 400;
}

.purchase-info {
    margin: 1.5rem 0;
}

.purchase-info input,
.purchase-info .btn {
    border: 1.5px solid #ddd;
    border-radius: 25px;
    text-align: center;
    padding: 0.45rem 0.8rem;
    outline: 0;
    margin-right: 0.2rem;
    margin-bottom: 1rem;
}

.purchase-info input {
    width: 60px;
}

.purchase-info .btn {
    cursor: pointer;
    color: #fff;
}

.purchase-info .btn:first-of-type {
    background: #256eff;
}

.purchase-info .btn:last-of-type {
    background: #f64749;
}

.purchase-info .btn:hover {
    opacity: 0.9;
}

.social-links {
    display: flex;
    align-items: center;
}

.social-links a {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 32px;
    height: 32px;
    color: #000;
    border: 1px solid #000;
    margin: 0 0.2rem;
    border-radius: 50%;
    text-decoration: none;
    font-size: 0.8rem;
    transition: all 0.5s ease;
}

.social-links a:hover {
    background: #000;
    border-color: transparent;
    color: #fff;
}

/* ... Các phần CSS sau đó ... */

/* ----------- Start Footer ---------- */
footer {
    background-color: cornflowerblue;
    padding: 15px;
    margin-top: -35px;
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
    <div class="tuan">
    
    <div class = "card-wrapper">
      <div class = "card">
        <!-- card left -->
        <div class = "product-imgs">
          <div class = "img-display">
            <div class = "img-showcase">
              <img id="productImage" runat="server" alt="Product Image" />
              
            </div>
          </div>
          
        </div>
        <!-- card right -->
        <div class = "product-content">
          <h2 class = "product-title" id="productName" runat="server"></h2>
          <a href = "#" class = "product-link">Đến thăm gian hàng của tôi</a>
          <div class = "product-rating">
            <i class = "fas fa-star"></i>
            <i class = "fas fa-star"></i>
            <i class = "fas fa-star"></i>
            <i class = "fas fa-star"></i>
            <i class = "fas fa-star-half-alt"></i>
            <span>4.7(21)</span>
          </div>

          <div class = "product-price">
            <span>Giá: </span>
            <p class = "new-price"  id="productPrice" runat="server"></p>
          </div>

          <div class = "product-detail">
            <h2>Mô tả sản phẩm: </h2>
            <p id="productDescription" runat="server"></p>
            
            <ul>
              <li>Ship COD (Thanh toán khi nhận hàng)</li>
              <li>Đổi hàng trong vòng 10 ngày. </li>
              <li>Mua hàng trực tiếp tại: Thanh Hóa</li>
              <li>Liên hệ mua hàng: 0909.847.730 / 0981.997.698</li>
            </ul>
          </div>

          <div class = "purchase-info">
              <span>Số Lượng: </span>
            <input type = "number" min = "0" value = "1">
            <button type = "button" class = "btn">
              Mua ngay <i class = "fas fa-shopping-cart"></i>
            </button>
            <button type = "button" class = "btn">Yêu thích</button>
          </div>
            
          
        </div>
      </div>
    </div>

    
    
 </div>
</asp:Content>
