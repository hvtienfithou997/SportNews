using SportNews247.Database;
using System;
using System.Linq;
using System.Web.Mvc;

namespace SportNews247.Controllers
{
    public class AdminController : BaseController
    {
        // GET: Admin
        public ActionResult GetAllTin()
        {
            var allTin = db.TinTucs.ToList();
            return View(allTin);
        }

        public ActionResult ThemTinMoi()
        {
            ViewBag.User = Request.Cookies["MyAccount"];
            //ViewBag.DanhMuc = db.DanhMucTins.ToDictionary(x => x.id, y => y.tieu_de);
            ViewBag.DanhMuc = db.DanhMucTins.ToList();
            return View();
        }
        
        [HttpPost, ValidateInput(false)]
        public ActionResult ThemTinMoi(TinTuc tin)
        {
            if (tin?.tieu_de == null || tin.tieu_de.Trim().Length == 0)
            {
                ModelState.AddModelError("tieu_de", "Tiêu đề bị bỏ trống.");
            }
            try
            {
                tin.id = Guid.NewGuid().ToString();
                tin.ngay_tao = DateTime.Now;
                tin.trang_thai = (int)TrangThai.CHO_XET_DUYET;

                db.TinTucs.Add(tin);
                db.SaveChanges();

                return RedirectToAction("GetAllTin");
            }
            catch (Exception ex)
            {
                TempData["Message"] = (ex.InnerException ?? ex).Message;
                return RedirectToAction("GetAllTin");
            }
        }
        public enum TrangThai
        {
            BI_TU_CHOI,
            CHO_XET_DUYET,
            DA_DUYET
        }
    }
}