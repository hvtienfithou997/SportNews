using SportNews247.Database;
using System.Web.Mvc;

namespace SportNews247.Controllers
{
    public class BaseController : Controller
    {
        protected readonly SportNews247Entities db = new SportNews247Entities();
    }
}