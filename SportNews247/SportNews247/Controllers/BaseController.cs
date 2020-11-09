using System;
using SportNews247.Database;
using System.Web.Mvc;

namespace SportNews247.Controllers
{
    public class BaseController : Controller
    {
        protected readonly SportNews247Entities db = new SportNews247Entities();

        public bool IsAdmin()
        {
            var user = (User)Session["User"];
            if (string.Equals(user?.username, "admin", StringComparison.InvariantCultureIgnoreCase))
            {
                return true;
            }
            return false;
        }
    }



}