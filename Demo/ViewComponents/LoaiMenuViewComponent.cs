using Demo.Respository;
using Microsoft.AspNetCore.Mvc;

namespace Demo.ViewComponents
{
    public class LoaiMenuViewComponent : ViewComponent
    {
        public readonly ILoaiMenuRespository _tenmon;
        public LoaiMenuViewComponent(ILoaiMenuRespository tenmon)
        {
            _tenmon = tenmon;
        }
        public IViewComponentResult Invoke()
        {
            var loaimonan = _tenmon.GetAllLoai().ToList();
            return View(loaimonan);
        }
    }
}
