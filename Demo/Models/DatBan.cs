using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class DatBan
{
    public int Id { get; set; }

    public string? NameKh { get; set; }

    public string? Email { get; set; }

    public string? Phone { get; set; }

    public DateTime? Ngaydat { get; set; }

    public string? GioNhan { get; set; }

    public string? Sl { get; set; }
}
