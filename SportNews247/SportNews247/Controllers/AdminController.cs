using SportNews247.Database;
using System;
using System.IO;
using System.Linq;
using System.Web;
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

            ViewBag.CountNews = allTin.Count;
            return View(allTin);
        }

        public ActionResult ThemTinMoi()
        {
            ViewBag.User = Request.Cookies["MyAccount"];
            ViewBag.DanhMuc = db.DanhMucTins.ToList();
            return View();
        }

        [HttpPost, ValidateInput(false)]
        public ActionResult ThemTinMoi(TinTuc tin, HttpPostedFileBase img)
        {
            if (IsAdmin())
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
                    if (img.ContentLength > 0)
                    {
                        string fileName = Path.GetFileName(img.FileName);
                        string path = Path.Combine(Server.MapPath("~/Source/img"), fileName);
                        img.SaveAs(path);
                        tin.img = fileName;
                    }
                    
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

            TempData["Message"] = "Bạn không có quyền";
            return View();

        }

        public ActionResult CheckNew(string id, string stt)
        {
            if (IsAdmin())
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

            TempData["Message"] = "Bạn không có quyền";
            return RedirectToAction("GetAllTin");
        }

        public ActionResult TaiKhoan()
        {
            return View(db.Users.ToList());
        }

        // Them tai khoan thanh vien
        public ActionResult AddUser()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddUser(User u)
        {
            if (IsAdmin() && u.per < 5 && u.per > 0)
            {
                u.id = Guid.NewGuid().ToString();
                db.Users.Add(u);
                db.SaveChanges();
                return RedirectToAction("TaiKhoan");
            }
            return View();
        }

        // Sua thong tin tai khoan
        public ActionResult EditUser(string id)
        {
            var user = db.Users.Find(id);
            if (user == null)
            {
                TempData["Message"] = $"Không có user với mã số {id}";
                return RedirectToAction("TaiKhoan");
            }
            return View(user);
        }

        [HttpPost]
        public ActionResult EditUser(User u)
        {
            if (IsAdmin())
            {
                if (u?.username.Trim().Length == 0 && u.password.Trim().Length == 0)
                {
                    TempData["Message"] = $"Bạn cần nhập đầy đủ thông tin";
                }

                db.SaveChanges();
                return RedirectToAction("TaiKhoan");
            }

            return View();
        }

        public ActionResult DeleteUser(string id)
        {
            if (IsAdmin())
            {
                var user = db.Users.Find(id);
                if (user != null) db.Users.Remove(user);
                db.SaveChanges();
                return RedirectToAction("TaiKhoan");
            }
            TempData["Message"] = "Bạn không có quyền xóa nhân viên này";
            return RedirectToAction("TaiKhoan");
        }

        // check quyền admin
       

        public enum TrangThai
        {
            BI_TU_CHOI,
            CHO_XET_DUYET,
            DA_DUYET
        }
    }
}