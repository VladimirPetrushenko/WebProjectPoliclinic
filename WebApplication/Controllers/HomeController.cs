using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Project1;

namespace WebApplication.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            PoliclinicEDM context = new PoliclinicEDM();
            var MedicalCard = context.MedicalCard;

            List<MedicalCard> cards = new List<MedicalCard>();
            foreach (var item in MedicalCard)
            {
                cards.Add(item);
            }
            return View(cards);
        }
        public IActionResult About()
        {
            return View();
        }
    }
}
