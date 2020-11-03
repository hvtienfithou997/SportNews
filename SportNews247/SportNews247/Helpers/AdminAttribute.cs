using System;
using System.Web.Mvc;
using SportNews247.Database;

namespace SportNews247.Helpers
{
    public class AdminAttribute : ActionFilterAttribute, IActionFilter
    {
        void IActionFilter.OnActionExecuting(ActionExecutingContext filterContext)
        {
            var user = filterContext.HttpContext.Session.Contents["User"] as User;

            if (!string.Equals(user?.username.Trim(), "admin", StringComparison.InvariantCultureIgnoreCase))
            {
                filterContext.Result = new RedirectToRouteResult(
                    new System.Web.Routing.RouteValueDictionary(new { controller = "Home", action = "Index" })

                );
            }
        }
    }
}