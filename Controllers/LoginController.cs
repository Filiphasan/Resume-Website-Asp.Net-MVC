using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCvWebsite.Models.Entity;
using MvcCvWebsite.Models.Entity;
using System.Web.Security;

namespace MvcCvWebsite.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        MVCCvWebsiteEntities db = new MVCCvWebsiteEntities();
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Admin admin)
        {
            var bilgiler = db.Admin.FirstOrDefault(x => x.KullaniciAdi == admin.KullaniciAdi && x.Sifre == admin.Sifre);
            if (bilgiler != null)
            {
                FormsAuthentication.SetAuthCookie(admin.KullaniciAdi, false);
                Session["KullaniciAdi"] = admin.KullaniciAdi;
                return RedirectToAction("Index","About");
            }
            return View("Login");
        }
    }
}