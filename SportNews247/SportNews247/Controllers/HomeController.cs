using System;
using SportNews247.Database;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace SportNews247.Controllers
{
    public class HomeController : BaseController
    {
        //trang chu
        public ActionResult Index()
        {
            List<TinTuc> lst = new List<TinTuc>();
            var tintuc = db.TinTucs.ToList();
            string name = string.Empty;
            foreach (var tinTuc in tintuc)
            {
                name = db.DanhMucTins.Find(tinTuc.id_dm)?.tieu_de;
                tinTuc.id_dm = name;
                lst.Add(tinTuc);
            }
            ViewBag.NhomTin = lst.GroupBy(p => p.id_dm)
                .Select(g => new RenderTin { id_dm = g.Key, tin_tuc = g.ToList() });

            return View(GetAll());
        }

        public List<TinTuc> GetAll()
        {
            return db.TinTucs.ToList();
        }

        //doc tin tuc
        [Route("san-pham/{title}.html")]
        [HttpGet]
        public ActionResult XemTinTuc(string id, string title)
        {
            var tinTuc = db.TinTucs.FirstOrDefault(x => x.id == id);
            ViewBag.CungDanhMuc = db.TinTucs.Where(x => x.id_dm == tinTuc.id_dm).ToList();
            ViewBag.QuanTam = GetAll();
            ViewBag.DanhMuc = db.DanhMucTins.ToList();
            return View(tinTuc);
        }

        // hien thi tin theo danh muc
        [Route("danh-muc/{title}.html")]
        public ActionResult LocTinTuc(string id, string title)
        {
            IQueryable<TinTuc> lst;
            ViewBag.TenDanhMuc = db.DanhMucTins.Find(id)?.tieu_de.ToLower();

            if (!string.IsNullOrEmpty(id))
            {
                lst = db.TinTucs.Where(x => x.id_dm == id);
                return View(lst);
            }
            else
            {
                lst = db.TinTucs.Take(12);
                return View(lst);
            }
        }

        public ActionResult TinTuc()
        {
            return View(GetAll());
        }

        public ActionResult Search(string search)
        {
            if (!string.IsNullOrEmpty(search))
            {
                var result = db.TinTucs.Where(x => x.tieu_de.ToLower().Contains(search.ToLower())).ToList();

                return View("TinTuc", result);
            }
            else
            {
                return RedirectToAction("Index");
            }
        }

        public ActionResult Contact()
        {
            return View();
        }

        public class RenderTin
        {
            public string id_dm { get; set; }
            public IEnumerable<TinTuc> tin_tuc { get; set; }
        }
    }
}