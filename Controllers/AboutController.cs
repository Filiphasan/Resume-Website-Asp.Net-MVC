using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCvWebsite.Models.Entity;

namespace MvcCvWebsite.Controllers
{
    public class AboutController : Controller
    {
        // GET: About
        MVCCvWebsiteEntities db = new MVCCvWebsiteEntities();
        [Authorize]
        public ActionResult Index()
        {
            var about = db.About.ToList();
            return View(about);
        }

        public ActionResult GetAbout(int id=1)
        {
            var about = db.About.Find(id);
            return View("GetAbout",about);
        }


        public ActionResult UpdateAbout(About about)
        {
            var a = db.About.Find(1);
            a.Name = about.Name;
            a.Surname = about.Surname;
            a.Phone = about.Phone;
            a.Mail = about.Mail;
            a.Adress = about.Adress;
            a.About1 = about.About1;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}