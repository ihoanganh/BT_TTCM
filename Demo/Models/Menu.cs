using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class Menu
{
    public int Id { get; set; }

    public string TenMon { get; set; } = null!;

    public int Gia { get; set; }

    public string Anh { get; set; } = null!;

    public int IdLoai { get; set; }

    public virtual ICollection<ChitietHdb> ChitietHdbs { get; set; } = new List<ChitietHdb>();

    public virtual LoaiMonAn IdLoaiNavigation { get; set; } = null!;
}
