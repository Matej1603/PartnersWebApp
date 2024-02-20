using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;

namespace PartnersWebApp.Models
{
    public class Partner
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string FullName
        {
            get { return $"{FirstName} {LastName}"; }
        }
        public string Address { get; set; }
        public string PartnerNumber { get; set; }
        public string CroatianPIN { get; set; }
        public int PartnerTypeId { get; set; }
        public DateTime CreatedAtUtc { get; set; }
        public string CreateByUser { get; set; }
        public bool IsForeign { get; set; }
        public string ExternalCode { get; set; }
        public char Gender { get; set; }
        public int NumberOfPolicies { get; set; }
        public decimal TotalAmount { get; set; }

    }
}