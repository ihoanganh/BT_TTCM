using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class TinhTrang
{
    public int Id { get; set; }

    public string TrangThai { get; set; } = null!;

    public virtual ICollection<ChitietTtb> ChitietTtbs { get; set; } = new List<ChitietTtb>();
}
