using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class NhanVien
{
    public int Id { get; set; }

    public DateTime NgaySinh { get; set; }

    public bool GioiTinh { get; set; }

    public int LuongCb { get; set; }

    public int IdPhong { get; set; }

    public int IdCv { get; set; }

    public string HoTen { get; set; } = null!;

    public string? AnhDaiDien { get; set; }

    public virtual ICollection<HoaDonBan> HoaDonBans { get; set; } = new List<HoaDonBan>();

    public virtual ICollection<HoaDonNhap> HoaDonNhaps { get; set; } = new List<HoaDonNhap>();

    public virtual ICollection<HoaDonXuat> HoaDonXuats { get; set; } = new List<HoaDonXuat>();

    public virtual ChucVu IdCvNavigation { get; set; } = null!;

    public virtual PhongQl IdPhongNavigation { get; set; } = null!;
}
