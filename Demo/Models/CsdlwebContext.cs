using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Demo.Models;

namespace Demo.Models;

public partial class CsdlwebContext : DbContext
{
    public CsdlwebContext()
    {
    }

    public CsdlwebContext(DbContextOptions<CsdlwebContext> options)
        : base(options)
    {
    }

    public virtual DbSet<BanAn> BanAns { get; set; }

    public virtual DbSet<Blog> Blogs { get; set; }

    public virtual DbSet<ChitietHdb> ChitietHdbs { get; set; }

    public virtual DbSet<ChitietHdn> ChitietHdns { get; set; }

    public virtual DbSet<ChitietHdx> ChitietHdxes { get; set; }

    public virtual DbSet<ChitietTtb> ChitietTtbs { get; set; }

    public virtual DbSet<ChucVu> ChucVus { get; set; }

    public virtual DbSet<CommentBlog> CommentBlogs { get; set; }

    public virtual DbSet<Contact> Contacts { get; set; }

    public virtual DbSet<DatBan> DatBans { get; set; }

    public virtual DbSet<HangHoa> HangHoas { get; set; }

    public virtual DbSet<HoaDonBan> HoaDonBans { get; set; }

    public virtual DbSet<HoaDonNhap> HoaDonNhaps { get; set; }

    public virtual DbSet<HoaDonXuat> HoaDonXuats { get; set; }

    public virtual DbSet<KhachHang> KhachHangs { get; set; }

    public virtual DbSet<LoaiMonAn> LoaiMonAns { get; set; }

    public virtual DbSet<Menu> Menus { get; set; }

    public virtual DbSet<NhaCungCap> NhaCungCaps { get; set; }

    public virtual DbSet<NhanVien> NhanViens { get; set; }

    public virtual DbSet<PhongQl> PhongQls { get; set; }

    public virtual DbSet<Tang> Tangs { get; set; }

    public virtual DbSet<TinhTrang> TinhTrangs { get; set; }

    public virtual DbSet<Tuser> Tusers { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=SQL5110.site4now.net,1433;Initial Catalog=db_a98062_login;User Id=db_a98062_login_admin;Password=adelina1@");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<BanAn>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__BanAn__3214EC27774A2AAF");

            entity.ToTable("BanAn");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.IdTang).HasColumnName("ID_Tang");
            entity.Property(e => e.Slghe).HasColumnName("SLGhe");

            entity.HasOne(d => d.IdTangNavigation).WithMany(p => p.BanAns)
                .HasForeignKey(d => d.IdTang)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__BanAn__ID_Tang__619B8048");
        });

        modelBuilder.Entity<Blog>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Blog__3214EC27B3FC2DA6");

            entity.ToTable("Blog");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Anh).HasMaxLength(50);
            entity.Property(e => e.NgayDang).HasColumnType("datetime");
            entity.Property(e => e.NoiDung).HasMaxLength(3000);
            entity.Property(e => e.TacGia).HasMaxLength(50);
            entity.Property(e => e.TieuDe).HasMaxLength(500);
        });

        modelBuilder.Entity<ChitietHdb>(entity =>
        {
            entity.HasKey(e => new { e.IdMenu, e.IdHdb }).HasName("PK__ChitietH__DDC0A6C8B578DF05");

            entity.ToTable("ChitietHDB");

            entity.Property(e => e.IdMenu).HasColumnName("ID_Menu");
            entity.Property(e => e.IdHdb).HasColumnName("ID_HDB");
            entity.Property(e => e.Sl).HasColumnName("SL");

            entity.HasOne(d => d.IdHdbNavigation).WithMany(p => p.ChitietHdbs)
                .HasForeignKey(d => d.IdHdb)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ChitietHD__ID_HD__628FA481");

            entity.HasOne(d => d.IdMenuNavigation).WithMany(p => p.ChitietHdbs)
                .HasForeignKey(d => d.IdMenu)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ChitietHD__ID_Me__6383C8BA");
        });

        modelBuilder.Entity<ChitietHdn>(entity =>
        {
            entity.HasKey(e => new { e.IdHh, e.IdHdn }).HasName("PK__ChitietH__E98A33FE272D4F92");

            entity.ToTable("ChitietHDN");

            entity.Property(e => e.IdHh).HasColumnName("ID_HH");
            entity.Property(e => e.IdHdn).HasColumnName("ID_HDN");
            entity.Property(e => e.Sl).HasColumnName("SL");

            entity.HasOne(d => d.IdHdnNavigation).WithMany(p => p.ChitietHdns)
                .HasForeignKey(d => d.IdHdn)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ChitietHD__ID_HD__6477ECF3");

            entity.HasOne(d => d.IdHhNavigation).WithMany(p => p.ChitietHdns)
                .HasForeignKey(d => d.IdHh)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ChitietHD__ID_HH__656C112C");
        });

        modelBuilder.Entity<ChitietHdx>(entity =>
        {
            entity.HasKey(e => new { e.IdHh, e.IdHdx }).HasName("PK__ChitietH__898A33FD70D774CC");

            entity.ToTable("ChitietHDX");

            entity.Property(e => e.IdHh).HasColumnName("ID_HH");
            entity.Property(e => e.IdHdx).HasColumnName("ID_HDX");
            entity.Property(e => e.Sl).HasColumnName("SL");

            entity.HasOne(d => d.IdHdxNavigation).WithMany(p => p.ChitietHdxes)
                .HasForeignKey(d => d.IdHdx)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ChitietHD__ID_HD__66603565");

            entity.HasOne(d => d.IdHhNavigation).WithMany(p => p.ChitietHdxes)
                .HasForeignKey(d => d.IdHh)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ChitietHD__ID_HH__6754599E");
        });

        modelBuilder.Entity<ChitietTtb>(entity =>
        {
            entity.HasKey(e => new { e.IdBan, e.IdTt }).HasName("PK__ChitietT__2C9DBFE366B8AC66");

            entity.ToTable("ChitietTTB");

            entity.Property(e => e.IdBan).HasColumnName("ID_Ban");
            entity.Property(e => e.IdTt).HasColumnName("ID_TT");
            entity.Property(e => e.ThoiGian).HasColumnType("datetime");

            entity.HasOne(d => d.IdBanNavigation).WithMany(p => p.ChitietTtbs)
                .HasForeignKey(d => d.IdBan)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ChitietTT__ID_Ba__68487DD7");

            entity.HasOne(d => d.IdTtNavigation).WithMany(p => p.ChitietTtbs)
                .HasForeignKey(d => d.IdTt)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ChitietTT__ID_TT__693CA210");
        });

        modelBuilder.Entity<ChucVu>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__ChucVu__3214EC278FAC6828");

            entity.ToTable("ChucVu");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Hsl).HasColumnName("HSL");
            entity.Property(e => e.TenCv)
                .HasMaxLength(50)
                .HasColumnName("TenCV");
        });

        modelBuilder.Entity<CommentBlog>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__comment___3214EC27F106B0F5");

            entity.ToTable("comment_blog");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Content).HasColumnType("text");
            entity.Property(e => e.IdBlog).HasColumnName("ID_Blog");
            entity.Property(e => e.IdUser)
                .HasMaxLength(100)
                .IsUnicode(false)
                .IsFixedLength()
                .HasColumnName("ID_User");

            entity.HasOne(d => d.IdBlogNavigation).WithMany(p => p.CommentBlogs)
                .HasForeignKey(d => d.IdBlog)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__comment_b__ID_Bl__6A30C649");

            entity.HasOne(d => d.IdUserNavigation).WithMany(p => p.CommentBlogs)
                .HasForeignKey(d => d.IdUser)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__comment_b__ID_Us__6B24EA82");
        });

        modelBuilder.Entity<Contact>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Contact__3214EC279923872C");

            entity.ToTable("Contact");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.SendMessage).HasMaxLength(100);
            entity.Property(e => e.Subject).HasMaxLength(50);
            entity.Property(e => e.YourEmail).HasMaxLength(50);
            entity.Property(e => e.Yourname).HasMaxLength(50);
        });

        modelBuilder.Entity<DatBan>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__DatBan__3214EC2772437B2C");

            entity.ToTable("DatBan");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Email)
                .HasMaxLength(50)
                .HasColumnName("email");
            entity.Property(e => e.GioNhan)
                .HasMaxLength(50)
                .HasColumnName("gio_nhan");
            entity.Property(e => e.NameKh)
                .HasMaxLength(50)
                .HasColumnName("name_kh");
            entity.Property(e => e.Ngaydat)
                .HasColumnType("date")
                .HasColumnName("ngaydat");
            entity.Property(e => e.Phone)
                .HasMaxLength(50)
                .HasColumnName("phone");
            entity.Property(e => e.Sl).HasMaxLength(10);
        });

        modelBuilder.Entity<HangHoa>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__HangHoa__3214EC279B6D7EF4");

            entity.ToTable("HangHoa");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.IdNhaCc).HasColumnName("ID_NhaCC");
            entity.Property(e => e.NgayNhap).HasColumnType("datetime");
            entity.Property(e => e.Sl).HasColumnName("SL");
            entity.Property(e => e.TenHh)
                .HasMaxLength(50)
                .HasColumnName("TenHH");

            entity.HasOne(d => d.IdNhaCcNavigation).WithMany(p => p.HangHoas)
                .HasForeignKey(d => d.IdNhaCc)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__HangHoa__ID_NhaC__6C190EBB");
        });

        modelBuilder.Entity<HoaDonBan>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__HoaDonBa__3214EC27EF4827AF");

            entity.ToTable("HoaDonBan");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.IdBan).HasColumnName("ID_Ban");
            entity.Property(e => e.IdKh).HasColumnName("ID_KH");
            entity.Property(e => e.IdNv).HasColumnName("ID_NV");
            entity.Property(e => e.NgayXuat).HasColumnType("datetime");
            entity.Property(e => e.SoHd)
                .HasMaxLength(50)
                .HasColumnName("SoHD");

            entity.HasOne(d => d.IdBanNavigation).WithMany(p => p.HoaDonBans)
                .HasForeignKey(d => d.IdBan)
                .HasConstraintName("FK__HoaDonBan__ID_Ba__6D0D32F4");

            entity.HasOne(d => d.IdKhNavigation).WithMany(p => p.HoaDonBans)
                .HasForeignKey(d => d.IdKh)
                .HasConstraintName("FK__HoaDonBan__ID_KH__6E01572D");

            entity.HasOne(d => d.IdNvNavigation).WithMany(p => p.HoaDonBans)
                .HasForeignKey(d => d.IdNv)
                .HasConstraintName("FK__HoaDonBan__ID_NV__6EF57B66");
        });

        modelBuilder.Entity<HoaDonNhap>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__HoaDonNh__3214EC27286ED74F");

            entity.ToTable("HoaDonNhap");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.IdNv).HasColumnName("ID_NV");
            entity.Property(e => e.NgayNhap).HasColumnType("datetime");

            entity.HasOne(d => d.IdNvNavigation).WithMany(p => p.HoaDonNhaps)
                .HasForeignKey(d => d.IdNv)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__HoaDonNha__ID_NV__6FE99F9F");
        });

        modelBuilder.Entity<HoaDonXuat>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__HoaDonXu__3214EC27621B50D1");

            entity.ToTable("HoaDonXuat");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.IdNv).HasColumnName("ID_NV");
            entity.Property(e => e.NgayXuat).HasColumnType("datetime");

            entity.HasOne(d => d.IdNvNavigation).WithMany(p => p.HoaDonXuats)
                .HasForeignKey(d => d.IdNv)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__HoaDonXua__ID_NV__70DDC3D8");
        });

        modelBuilder.Entity<KhachHang>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__KhachHan__3214EC277896E344");

            entity.ToTable("KhachHang");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Email).HasMaxLength(50);
            entity.Property(e => e.HoTen).HasMaxLength(50);
            entity.Property(e => e.Img).HasMaxLength(50);
            entity.Property(e => e.Sdt)
                .HasMaxLength(50)
                .HasColumnName("SDT");
        });

        modelBuilder.Entity<LoaiMonAn>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__LoaiMonA__3214EC271994E185");

            entity.ToTable("LoaiMonAn");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.TenLoai).HasMaxLength(50);
        });

        modelBuilder.Entity<Menu>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Menu__3214EC27A591EA84");

            entity.ToTable("Menu");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Anh).HasMaxLength(50);
            entity.Property(e => e.IdLoai).HasColumnName("ID_Loai");
            entity.Property(e => e.TenMon).HasMaxLength(50);

            entity.HasOne(d => d.IdLoaiNavigation).WithMany(p => p.Menus)
                .HasForeignKey(d => d.IdLoai)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Menu__ID_Loai__71D1E811");
        });

        modelBuilder.Entity<NhaCungCap>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__NhaCungC__3214EC27F7F138B9");

            entity.ToTable("NhaCungCap");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.TenNcc)
                .HasMaxLength(50)
                .HasColumnName("TenNCC");
        });

        modelBuilder.Entity<NhanVien>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__NhanVien__3214EC2774A1F968");

            entity.ToTable("NhanVien");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.AnhDaiDien).HasMaxLength(50);
            entity.Property(e => e.HoTen).HasMaxLength(50);
            entity.Property(e => e.IdCv).HasColumnName("ID_CV");
            entity.Property(e => e.IdPhong).HasColumnName("ID_Phong");
            entity.Property(e => e.LuongCb).HasColumnName("LuongCB");
            entity.Property(e => e.NgaySinh).HasColumnType("datetime");

            entity.HasOne(d => d.IdCvNavigation).WithMany(p => p.NhanViens)
                .HasForeignKey(d => d.IdCv)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__NhanVien__ID_CV__72C60C4A");

            entity.HasOne(d => d.IdPhongNavigation).WithMany(p => p.NhanViens)
                .HasForeignKey(d => d.IdPhong)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__NhanVien__ID_Pho__73BA3083");
        });

        modelBuilder.Entity<PhongQl>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__PhongQL__3214EC27D20206A9");

            entity.ToTable("PhongQL");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.TenPhong).HasMaxLength(50);
        });

        modelBuilder.Entity<Tang>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Tang__3214EC27284CD3DE");

            entity.ToTable("Tang");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.TenTang).HasMaxLength(50);
        });

        modelBuilder.Entity<TinhTrang>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__TinhTran__3214EC27D9BAF80A");

            entity.ToTable("TinhTrang");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.TrangThai).HasMaxLength(50);
        });

        modelBuilder.Entity<Tuser>(entity =>
        {
            entity.HasKey(e => e.Username).HasName("pk_tuser");

            entity.ToTable("TUser");

            entity.Property(e => e.Username)
                .HasMaxLength(100)
                .IsUnicode(false)
                .IsFixedLength();
            entity.Property(e => e.Email)
                .HasMaxLength(500)
                .IsUnicode(false)
                .IsFixedLength();
            entity.Property(e => e.HoTen).HasMaxLength(50);
            entity.Property(e => e.Password)
                .HasMaxLength(256)
                .IsUnicode(false)
                .IsFixedLength();
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
