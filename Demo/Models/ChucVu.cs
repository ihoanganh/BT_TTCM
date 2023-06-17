using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class ChucVu
{
    public int Id { get; set; }

    public string TenCv { get; set; } = null!;

    public double Hsl { get; set; }

    public virtual ICollection<NhanVien> NhanViens { get; set; } = new List<NhanVien>();
}
