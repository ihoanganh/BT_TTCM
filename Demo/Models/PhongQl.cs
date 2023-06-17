﻿using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class PhongQl
{
    public int Id { get; set; }

    public string TenPhong { get; set; } = null!;

    public virtual ICollection<NhanVien> NhanViens { get; set; } = new List<NhanVien>();
}
