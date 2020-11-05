using SportNews247.Database;
using SportNews247.Helpers;
using SportNews247.Models;
using System;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SportNews247.Controllers
{
    public class LoginController : BaseController
    {
        [HttpGet]
        public ActionResult Login()
        {
            // Da login tu truoc
            if (Session["User"] != null)
            {
                return RedirectToAction("Index", "Home");
            }
            Request.Cookies.Clear();
            return View();
        }

        [HttpPost]
        public ActionResult Login(LoginModel u)
        {
            if (!ModelState.IsValid)
            {
                return View(u);
            }

            // Mã hóa mật khẩu
            //var hashedPass = EncryptHelper.GenerateSHA256String(log.MatKhau);

            User user = db.Users.FirstOrDefault(x => x.username == u.username && x.password == u.password);

            if (user != null)
            {
                HttpCookie myCookie = new HttpCookie("MyAccount");
                DateTime now = DateTime.Now;

                // ma hoa theo danh Base64 va luu trong cookie
                myCookie.Value = EncryptHelper.Base64Encode(user.id.ToString());
                Session["User"] = user;
                // Set the cookie expiration date.
                myCookie.Expires = now.AddDays(30);

                // Add the cookie.
                Response.Cookies.Add(myCookie);
                return RedirectToAction("Index", "Home");
            }
            else
            {
                TempData["message"] = "Đăng nhập thất bại";
            }

            return RedirectToAction("Login");
        }

        public ActionResult LogOut()
        {
            string[] myCookies = Request.Cookies.AllKeys;
            foreach (string cookie in myCookies)
            {
                Response.Cookies[cookie].Expires = DateTime.Now.AddDays(-30);
            }
            return RedirectToAction("Login", "Login");
        }
    }
}