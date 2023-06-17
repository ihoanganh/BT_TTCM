using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class Tuser
{
    public string Username { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string Email { get; set; } = null!;

    public byte? LoaiUser { get; set; }

    public string HoTen { get; set; } = null!;

    public virtual ICollection<CommentBlog> CommentBlogs { get; set; } = new List<CommentBlog>();
}
