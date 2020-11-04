using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SportNews247.Database;

namespace SportNews247.Controllers
{    
    public class BaseController : Controller
    {
        protected readonly SportNews247Entities db = new SportNews247Entities();
    }
}