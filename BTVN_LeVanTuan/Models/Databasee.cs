using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using De1_QLSach.Models;

namespace dangnhap.Models
{
    public class Databasee
    {
        SqlConnection conn;
        public void OpenConn()
        {
            string sql = "server=.\\SQLEXPRESS;database=QL_web_banhang;user=sa;password=05042002";
            conn = new SqlConnection(sql);
            conn.Open();
        }

        public void CloseConn()
        {
            conn.Close();
        }

        public void RegisterUser(Nguoidung user)
        {
            OpenConn();
            string sql = "INSERT INTO NguoiDung VALUES(@Tendaydu, @DienThoai, @TenDangNhap, @MatKhau, @DiaChi, @Mode)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("Tendaydu", user.Tendaydu);
            cmd.Parameters.AddWithValue("DienThoai", user.DienThoai);
            cmd.Parameters.AddWithValue("TenDangNhap", user.TenDangNhap);
            cmd.Parameters.AddWithValue("MatKhau", user.MatKhau);
            cmd.Parameters.AddWithValue("DiaChi", user.DiaChi);
            cmd.Parameters.AddWithValue("Mode", user.Mode);
            cmd.ExecuteNonQuery();
            CloseConn();
        }

        public bool LoginUser(string TenDangNhap, string MatKhau)
        {
            DataTable tb = new DataTable();
            string sql = "SELECT * FROM NguoiDung WHERE TenDangNhap = @TenDangNhap AND MatKhau = @MatKhau";
            OpenConn();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("TenDangNhap", TenDangNhap);
            cmd.Parameters.AddWithValue("MatKhau", MatKhau);
            SqlDataReader dr = cmd.ExecuteReader();
            tb.Load(dr);
            CloseConn();
            return tb.Rows.Count > 0;
        }
        public Nguoidung GetUser(string TenDangNhap)
        {
            OpenConn();
            string sql = "SELECT * FROM NguoiDung WHERE TenDangNhap = @TenDangNhap";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("TenDangNhap", TenDangNhap);
            SqlDataReader dr = cmd.ExecuteReader();

            Nguoidung user = null;
            if (dr.Read())
            {
                user = new Nguoidung();
                user.Tendaydu = dr["Tendaydu"].ToString();
                user.DienThoai = dr["DienThoai"].ToString();
                user.TenDangNhap = dr["TenDangNhap"].ToString();
                user.MatKhau = dr["MatKhau"].ToString();
                user.DiaChi = dr["DiaChi"].ToString();
                user.Mode = dr["Mode"].ToString();
            }

            CloseConn();
            return user;
        }
        public bool CheckTenDangNhap(string tenDangNhap)
        {
            OpenConn();
            string sql = "SELECT * FROM NguoiDung WHERE TenDangNhap = @TenDangNhap";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("TenDangNhap", tenDangNhap);
            SqlDataReader dr = cmd.ExecuteReader();

            bool exists = dr.HasRows;
            CloseConn();
            return exists;
        }
    }
}