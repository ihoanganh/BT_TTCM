using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class BanAn
{
    public int Id { get; set; }

    public int Slghe { get; set; }

    public int IdTang { get; set; }

    public virtual ICollection<ChitietTtb> ChitietTtbs { get; set; } = new List<ChitietTtb>();

    public virtual ICollection<HoaDonBan> HoaDonBans { get; set; } = new List<HoaDonBan>();

    public virtual Tang IdTangNavigation { get; set; } = null!;
}
