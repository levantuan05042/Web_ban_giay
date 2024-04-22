using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dangnhap.Models
{
    public class Nguoidung
    {
        public string Tendaydu { get; set; }
        public string DienThoai { get; set; }
        public string TenDangNhap { get; set; }
        public string MatKhau { get; set; }
        public string DiaChi { get; set; }
        public string Mode { get; set; }

        public Nguoidung()
        {
        }

        public Nguoidung(string tendaydu, string dienThoai, string tenDangNhap, string matKhau, string diaChi, string mode)
        {
            Tendaydu = tendaydu;
            DienThoai = dienThoai;
            TenDangNhap = tenDangNhap;
            MatKhau = matKhau;
            DiaChi = diaChi;
            Mode = mode;
        }
    }
}