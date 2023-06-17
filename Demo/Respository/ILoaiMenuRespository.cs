using Demo.Models;

namespace Demo.Respository
{
    public interface ILoaiMenuRespository
    {
        LoaiMonAn Add(LoaiMonAn loaiMonAn);
        LoaiMonAn Update(LoaiMonAn loaiMonAn);
        LoaiMonAn Delete(string ID);
        LoaiMonAn GetLoaiMon(string ID);
        IEnumerable<LoaiMonAn> GetAllLoai();
    }
}
