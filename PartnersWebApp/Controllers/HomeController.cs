
using PartnersWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace PartnersWebApp.Controllers
{
    public class HomeController : Controller

    {
        
        public ActionResult Index()
        {
            PartnersRepository partnersRepository = new PartnersRepository();
            var partners = partnersRepository.getPartners();          
            return View(partners);
        }


        [HttpPost]
        public ActionResult AddNewPolicy(int partnerId, string policyNumber, decimal amount) {

            Policy policy = new Policy(partnerId, policyNumber, amount);
            PolicyRepository policyRepository = new PolicyRepository();
            bool isValid = policyRepository.insertPolicy(policy);
            if (isValid)
            {
                return RedirectToAction("Index");
            }
            else
            {
                return View("Error");
            }
           
        }

        public ActionResult PartnerForm()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddNewPartner (string firstName, string lastName, string address,
            string partnerNumber,string croatianPIN, int partnerTypeID, string email, bool isForeign,
            string externalCode, string gender)
        {
            PartnersRepository partnersRepository = new PartnersRepository();
            bool isValid = partnersRepository.insertPartner(firstName, lastName, address, partnerNumber, croatianPIN, partnerTypeID, email, isForeign, externalCode, gender);
            if (isValid)
            {
                return RedirectToAction("Index");
            }
            else
            {
                return View("Error");
            }
        }
    }
}