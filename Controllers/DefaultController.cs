using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCvWebsite.Models.Entity;
using MvcCvWebsite.Models.Sinif;

namespace MvcCvWebsite.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Default
        MVCCvWebsiteEntities db = new MVCCvWebsiteEntities();
        [Route("")]
        public ActionResult Index()
        {
            Class1 class1 = new Class1();
            class1.abouts = db.About.ToList();
            class1.experiences = db.Experience.ToList();
            class1.educations = db.Education.ToList();
            class1.skills = db.Skills.ToList();
            class1.ınteresteds = db.Interesteds.ToList();
            class1.awards = db.Awards.ToList();
            return View(class1);
        }
    }
}