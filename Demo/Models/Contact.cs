using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class Contact
{
    public int Id { get; set; }

    public string Yourname { get; set; } = null!;

    public string YourEmail { get; set; } = null!;

    public string Subject { get; set; } = null!;

    public string SendMessage { get; set; } = null!;
}
