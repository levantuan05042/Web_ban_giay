using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace De1_QLSach.Models
{
    public class Giay
    {
        private string maSanPham;
        private string tenSanPham;
        private string hanSanPham;
        private string hinhAnh;
        private string moTa;
        private decimal gia;
        private int soLuong;

        public string MaSanPham { get => maSanPham; set => maSanPham = value; }
        public string TenSanPham { get => tenSanPham; set => tenSanPham = value; }
        public string HanSanPham { get => hanSanPham; set => hanSanPham = value; }
        public string HinhAnh { get => hinhAnh; set => hinhAnh = value; }
        public string MoTa { get => moTa; set => moTa = value; }
        public decimal Gia { get => gia; set => gia = value; }
        public int SoLuong { get => soLuong; set => soLuong = value; }

        public Giay()
        {
        }

        public Giay(string maSanPham, string tenSanPham, string hanSanPham, string hinhAnh, string moTa, decimal gia, int soLuong)
        {
            this.maSanPham = maSanPham;
            this.tenSanPham = tenSanPham;
            this.hanSanPham = hanSanPham;
            this.hinhAnh = hinhAnh;
            this.moTa = moTa;
            this.gia = gia;
            this.soLuong = soLuong;
        }
    }
}
