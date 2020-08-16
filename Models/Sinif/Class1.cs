using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MvcCvWebsite.Models.Entity;

namespace MvcCvWebsite.Models.Sinif
{
    public class Class1
    {
        public IEnumerable<About> abouts { get; set; }
        public IEnumerable<Experience> experiences { get; set; }
        public IEnumerable<Education> educations { get; set; }
        public IEnumerable<Skills> skills { get; set; }
        public IEnumerable<Interesteds> ınteresteds { get; set; }
        public IEnumerable<Awards> awards { get; set; }
    }
}