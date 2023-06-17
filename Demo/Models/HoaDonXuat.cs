using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class HoaDonXuat
{
    public int Id { get; set; }

    public DateTime NgayXuat { get; set; }

    public int IdNv { get; set; }

    public virtual ICollection<ChitietHdx> ChitietHdxes { get; set; } = new List<ChitietHdx>();

    public virtual NhanVien IdNvNavigation { get; set; } = null!;
}
