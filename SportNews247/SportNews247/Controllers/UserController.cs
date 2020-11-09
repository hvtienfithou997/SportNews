using System;
using System.Linq;
using System.Web.Mvc;
using SportNews247.Database;

namespace SportNews247.Controllers
{
    public class UserController : BaseController
    {
        // GET: User
        public ActionResult MyNews()
        {
            var user = (User) Session["User"];
            if (user != null)
            {
                var getByUser = db.TinTucs.Where(x => x.id_user == user.id);
                return View(getByUser);
            }

            return View();
        }

        public ActionResult ThemTinMoi()
        {
            ViewBag.User = Request.Cookies["MyAccount"];
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
                tin.trang_thai = (int) TrangThai.CHO_XET_DUYET;

                db.TinTucs.Add(tin);
                db.SaveChanges();

                return RedirectToAction("MyNews");
            }
            catch (Exception ex)
            {
                TempData["Message"] = (ex.InnerException ?? ex).Message;
                return RedirectToAction("MyNews");
            }
        }

        public ActionResult SuaTinTuc(string id)
        {
            return View();
        }

        [HttpPost]
        public ActionResult SuaTinTuc(TinTuc tin)
        {
            return View();
        }


    public enum TrangThai
        {
            BI_TU_CHOI,
            CHO_XET_DUYET,
            DA_DUYET
        }

    }
}