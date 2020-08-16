using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCvWebsite.Models.Entity;

namespace MvcCvWebsite.Controllers
{
    public class AwardsController : Controller
    {
        // GET: Awards
        MVCCvWebsiteEntities db = new MVCCvWebsiteEntities();
        public ActionResult Index()
        {
            var award = db.Awards.ToList();
            return View(award);
        }

        [HttpGet]
        public ActionResult NewAward()
        {
            return View();
        }

        [HttpPost]
        public ActionResult NewAward(Awards awards)
        {
            db.Awards.Add(awards);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult RemoveAward(int id)
        {
            var award = db.Awards.Find(id);
            db.Awards.Remove(award);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult GetAward(int id)
        {
            var award = db.Awards.Find(id);
            return View("GetAward", award);
        }

        public ActionResult UpdateAward(Awards awards)
        {
            var a = db.Awards.Find(awards.Id);
            a.Award = awards.Award;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}