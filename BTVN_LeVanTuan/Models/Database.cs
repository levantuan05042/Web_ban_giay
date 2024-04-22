using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using BTVN_LeVanTuan.WebForms;
using De1_QLSach.Models;

namespace BTVN_LeVanTuan.Models
{
    public class Database : IDisposable
    {
        private SqlConnection conn;


        public Database(string connectionString)
        {
             connectionString = "server=.\\SQLEXPRESS;database=QL_web_banhang;user=sa;password=05042002";
            conn = new SqlConnection(connectionString);
        }

        public void OpenConn()
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
        }

        public void CloseConn()
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }

        public void Dispose()
        {
            CloseConn();
            conn.Dispose();
        }

        public DataTable ExecuteQuery(string sql)
        {
            DataTable tb = new DataTable();

            OpenConn();

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    tb.Load(dr);
                }
            }

            return tb;
        }

        public DataTable GetAll()
        {
            string sql = "SELECT TOP 4 * FROM SanPham ORDER BY Gia DESC";
            return ExecuteQuery(sql);
        }
        public DataTable Sanpham()
        {
            string sql = "SELECT * FROM SanPham";
            return ExecuteQuery(sql);
        }
        public DataTable Adidas()
        {
            string sql = "SELECT * FROM SanPham WHERE HanSanPham = N'Adidas'";
            return ExecuteQuery(sql);
        }
        public DataTable Nike()
        {
            string sql = "SELECT * FROM SanPham WHERE HanSanPham = N'Nike'";
            return ExecuteQuery(sql);
        }
        public DataTable VanS()
        {
            string sql = "SELECT * FROM SanPham WHERE HanSanPham = N'VanS'";
            return ExecuteQuery(sql);
        }
        public DataTable Balenciaga()
        {
            string sql = "SELECT * FROM SanPham WHERE HanSanPham = N'Balenciaga'";
            return ExecuteQuery(sql);
        }
        public DataTable Jordan()
        {
            string sql = "SELECT * FROM SanPham WHERE HanSanPham = N'Jordan'";
            return ExecuteQuery(sql);
        }
        public DataTable Khac()
        {
            string sql = "SELECT * FROM SanPham WHERE HanSanPham NOT IN (N'Adidas', N'Nike', N'VanS', N'Balenciaga', N'Jordan')";
            return ExecuteQuery(sql);
        }


        public DataTable GetProductDetails(string maSanPham)
        {
            DataTable tb = new DataTable();
            string sql = "SELECT * FROM SanPham WHERE MaSanPham = @MaSP";

            OpenConn();

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.Parameters.AddWithValue("@MaSP", maSanPham);

                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    tb.Load(dr);
                }
            }

            CloseConn();

            return tb;
        }
        public bool AddProduct(string maSanPham, string tenSanPham, string hanSanPham, string moTa, decimal gia, int soLuong, string hinhAnhFileName)
        {
            try
            {
                OpenConn();
                string sql = "INSERT INTO SanPham (MaSanPham, TenSanPham, HanSanPham, Mota, Gia, SoLuong, HinhAnh) VALUES (@MaSanPham, @TenSanPham, @HanSanPham, @Mota, @Gia, @SoLuong, @HinhAnh)";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@MaSanPham", maSanPham);
                    cmd.Parameters.AddWithValue("@TenSanPham", tenSanPham);
                    cmd.Parameters.AddWithValue("@HanSanPham", hanSanPham);
                    cmd.Parameters.AddWithValue("@Mota", moTa);
                    cmd.Parameters.AddWithValue("@Gia", gia);
                    cmd.Parameters.AddWithValue("@SoLuong", soLuong);
                    cmd.Parameters.AddWithValue("@HinhAnh", hinhAnhFileName);

                    cmd.ExecuteNonQuery();
                }

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                CloseConn();
            }
        }

        public void UpdateProduct(Giay sp)
        {
            OpenConn();
            string sql = "UPDATE SanPham SET TenSanPham = @TenSanPham, HanSanPham = @HanSanPham, Mota = @Mota, Gia = @Gia, SoLuong = @SoLuong, HinhAnh = @HinhAnh WHERE MaSanPham = @MaSanPham";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@TenSanPham", sp.TenSanPham);
            cmd.Parameters.AddWithValue("@HanSanPham", sp.HanSanPham);
            cmd.Parameters.AddWithValue("@Mota", sp.MoTa);
            cmd.Parameters.AddWithValue("@Gia", sp.Gia);
            cmd.Parameters.AddWithValue("@SoLuong", sp.SoLuong);
            if (sp.HinhAnh == "")
            {
                cmd.Parameters.AddWithValue("@HinhAnh", "");
            }
            else
            {
                cmd.Parameters.AddWithValue("@HinhAnh", sp.HinhAnh);
            }
            cmd.Parameters.AddWithValue("@MaSanPham", sp.MaSanPham);
            cmd.ExecuteNonQuery();
            CloseConn();
        }
        public bool DeleteProduct(string maSanPham)
        {
            try
            {
                OpenConn();
                string sql = "DELETE FROM SanPham WHERE MaSanPham = @MaSanPham";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@MaSanPham", maSanPham);

                    cmd.ExecuteNonQuery();
                }

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                CloseConn();
            }
        }
        public bool CheckMasp(string maSanPham)
        {
            OpenConn();
            string sql = "SELECT * FROM SanPham WHERE MaSanPham = @MaSanPham";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("MaSanPham", maSanPham);
            SqlDataReader dr = cmd.ExecuteReader();
            bool exists = dr.HasRows;
            CloseConn();
            return exists;
        }
    }
}