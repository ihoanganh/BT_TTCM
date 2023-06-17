using System;
using System.Collections.Generic;

namespace Demo.Models;

public partial class Blog
{
    public int Id { get; set; }

    public string TacGia { get; set; } = null!;

    public string TieuDe { get; set; } = null!;

    public string NoiDung { get; set; } = null!;

    public string Anh { get; set; } = null!;

    public DateTime NgayDang { get; set; }

    public virtual ICollection<CommentBlog> CommentBlogs { get; set; } = new List<CommentBlog>();
}
