using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCvWebsite.Models.Entity;

namespace MvcCvWebsite.Controllers
{
    public class ExperienceController : Controller
    {
        // GET: Experience
        MVCCvWebsiteEntities db = new MVCCvWebsiteEntities();
        public ActionResult Index()
        {
            var experience = db.Experience.ToList();
            return View(experience);
        }

        [HttpGet]
        public ActionResult YeniDeneyim()
        {
            return View();
        }

        [HttpPost]
        public ActionResult YeniDeneyim(Experience experience)
        {
            db.Experience.Add(experience);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult DeleteExperience(int id)
        {
            var experience = db.Experience.Find(id);
            db.Experience.Remove(experience);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult GetExperience(int id)
        {
            var experience = db.Experience.Find(id);
            return View("GetExperience", experience);
        }

        public ActionResult UpdateExperience(Experience experience)
        {
            var e = db.Experience.Find(experience.Id);
            e.Title = experience.Title;
            e.SubTitle = experience.SubTitle;
            e.Date = experience.Date;
            e.Detail = experience.Detail;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}