using SportNews247.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SportNews247.Controllers
{
    public class HomeController : BaseController
    {
        public ActionResult Index()
        {
            List<TinTuc> lst = new List<TinTuc>();
            string name = "";
            var tintuc = db.TinTucs.ToList();
            var danh_muc = db.DanhMucTins.ToDictionary(x => x.id, y => y.tieu_de);
            foreach (var item in tintuc)
            {
                foreach (var dm in danh_muc)
                {
                    if(item.id_dm == dm.Key)
                    {
                        name = dm.Value;
                    }
                }
                item.id_dm = name;
                lst.Add(item);
            }
            return View(lst);
        }
        public ActionResult XemTinTuc(string id)
        {
            var tintuc = db.TinTucs.FirstOrDefault(x => x.id == id);
            ViewBag.CungDanhMuc = db.TinTucs.Where(x => x.id_dm == tintuc.id_dm).ToList();
            return View(tintuc);
        }

    }
}