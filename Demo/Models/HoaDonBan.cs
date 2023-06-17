using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class HoaDonBan
{
    public int Id { get; set; }

    public string SoHd { get; set; } = null!;

    public DateTime NgayXuat { get; set; }

    public int? IdKh { get; set; }

    public int? IdBan { get; set; }

    public int? IdNv { get; set; }

    public double? TongTien { get; set; }

    public double? KhuyenMai { get; set; }

    public virtual ICollection<ChitietHdb> ChitietHdbs { get; set; } = new List<ChitietHdb>();

    public virtual BanAn? IdBanNavigation { get; set; }

    public virtual KhachHang? IdKhNavigation { get; set; }

    public virtual NhanVien? IdNvNavigation { get; set; }
}
