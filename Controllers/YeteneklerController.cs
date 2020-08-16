using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCvWebsite.Models.Entity;

namespace MvcCvWebsite.Controllers
{
    public class YeteneklerController : Controller
    {
        // GET: Yetenekler
        MVCCvWebsiteEntities db = new MVCCvWebsiteEntities();
        public ActionResult Index()
        {
            var skill = db.Skills.ToList();
            return View(skill);
        }

        [HttpGet]
        public ActionResult NewSkill()
        {
            return View();
        }

        [HttpPost]
        public ActionResult NewSkill(Skills skills)
        {
            db.Skills.Add(skills);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult RemoveSkill(int id)
        {
            var skill = db.Skills.Find(id);
            db.Skills.Remove(skill);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult GetSkill(int id)
        {
            var skill = db.Skills.Find(id);
            return View("GetSkill", skill);
        }

        public ActionResult UpdateSkill(Skills skills)
        {
            var s = db.Skills.Find(skills.Id);
            s.Skill = skills.Skill;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}