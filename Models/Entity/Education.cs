//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MvcCvWebsite.Models.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Education
    {
        public int Id { get; set; }
        public string University { get; set; }
        public string Faculty { get; set; }
        public string Branch { get; set; }
        public Nullable<decimal> GPA { get; set; }
        public string Date { get; set; }
    }
}
