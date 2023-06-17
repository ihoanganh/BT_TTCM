using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class LoaiMonAn
{
    public int Id { get; set; }

    public string TenLoai { get; set; } = null!;

    public virtual ICollection<Menu> Menus { get; set; } = new List<Menu>();
}
