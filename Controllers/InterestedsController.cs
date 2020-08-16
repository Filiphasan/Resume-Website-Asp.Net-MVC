using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCvWebsite.Models.Entity;

namespace MvcCvWebsite.Controllers
{
    public class InterestedsController : Controller
    {
        // GET: Interesteds
        MVCCvWebsiteEntities db = new MVCCvWebsiteEntities();
        public ActionResult Index()
        {
            var interested = db.Interesteds.ToList();
            return View(interested);
        }

        [HttpGet]
        public ActionResult NewInterested()
        {
            return View();
        }

        [HttpPost]
        public ActionResult NewInterested(Interesteds ınteresteds)
        {
            db.Interesteds.Add(ınteresteds);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult RemoveInterested(int id)
        {
            var interested = db.Interesteds.Find(id);
            db.Interesteds.Remove(interested);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult GetInterested(int id)
        {
            var interested = db.Interesteds.Find(id);
            return View("GetInterested", interested);
        }

        public ActionResult UpdateInterested(Interesteds ınteresteds)
        {
            var i = db.Interesteds.Find(ınteresteds.Id);
            i.Interested = ınteresteds.Interested;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}