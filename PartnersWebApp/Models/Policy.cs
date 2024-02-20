using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PartnersWebApp.Models
{
    public class Policy
    {
        public int PartnersId { get; set; }
        public string PolicyNumber { get; set; }
        public decimal Amount { get; set; }

        public Policy(int partnersId, string policyNumber, decimal amount)
        {
            PartnersId = partnersId;
            PolicyNumber = policyNumber;
            Amount = amount;
        }
    }
}