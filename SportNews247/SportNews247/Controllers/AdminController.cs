using SportNews247.Database;
using System;
using System.Linq;
using System.Web.Mvc;

namespace SportNews247.Controllers
{
    public class AdminController : BaseController
    {
        // GET: Admin
        public ActionResult GetAllTin(string trang_thai, string order, string up_down)
        {
            var allTin = db.TinTucs.ToList();
            if (!string.IsNullOrEmpty(trang_thai))
            {
                allTin = allTin.Where(x => x.trang_thai.ToString() == trang_thai).ToList();
            }

            if (!string.IsNullOrEmpty(order))
            {
                if (order == "word")
                {
                    if (up_down == "true")
                    {
                        allTin.OrderByDescending(x => x.tieu_de).ToList();
                    }
                    else
                    {
                        allTin = allTin.OrderBy(x => x.tieu_de).ToList();
                    }
                }
                else
                {
                    if (up_down == "true")
                    {
                        allTin.OrderBy(x => x.tieu_de).ToList();
                    }
                    else
                    {
                        allTin = allTin.OrderByDescending(x => x.ngay_tao).ToList();
                    }
                }
            }
            return View(allTin);
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

        public ActionResult CheckNew(string id, string stt)
        {
            if (!string.IsNullOrEmpty(stt))
            {
                var tin_tuc = db.TinTucs.Find(id);
                if (stt == "ok")
                {
                    tin_tuc.trang_thai = (int)TrangThai.DA_DUYET;
                }
                else
                {
                    tin_tuc.trang_thai = (int)TrangThai.BI_TU_CHOI;
                }

                db.SaveChanges();
            }
            return RedirectToAction("GetAllTin");
        }

        public ActionResult TaiKhoan()
        {
            return View(db.Users.ToList());
        }

        public enum TrangThai
        {
            BI_TU_CHOI,
            CHO_XET_DUYET,
            DA_DUYET
        }
    }
}