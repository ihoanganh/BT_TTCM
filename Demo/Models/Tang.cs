using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class Tang
{
    public int Id { get; set; }

    public string TenTang { get; set; } = null!;

    public virtual ICollection<BanAn> BanAns { get; set; } = new List<BanAn>();
}
