using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCvWebsite.Models.Entity;

namespace MvcCvWebsite.Controllers
{
    public class EducationController : Controller
    {
        // GET: Education
        MVCCvWebsiteEntities db = new MVCCvWebsiteEntities();
        public ActionResult Index()
        {
            var education = db.Education.ToList();
            return View(education);
        }

        [HttpGet]
        public ActionResult NewEducation()
        {
            return View();
        }

        [HttpPost]
        public ActionResult NewEducation(Education education)
        {
            db.Education.Add(education);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult RemoveEducation(int id)
        {
            var education = db.Education.Find(id);
            db.Education.Remove(education);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult GetEducation(int id)
        {
            var education = db.Education.Find(id);
            return View("GetEducation", education);
        }

        public ActionResult UpdateEducation(Education education)
        {
            var e = db.Education.Find(education.Id);
            e.University = education.University;
            e.Faculty = education.Faculty;
            e.Branch = education.Branch;
            e.GPA = education.GPA;
            e.Date = education.Date;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}