using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class NhaCungCap
{
    public int Id { get; set; }

    public string TenNcc { get; set; } = null!;

    public virtual ICollection<HangHoa> HangHoas { get; set; } = new List<HangHoa>();
}
