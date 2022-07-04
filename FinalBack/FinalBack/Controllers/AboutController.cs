using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FinalBack.DAL;
using FinalBack.Models;
using FinalBack.ViewModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;

namespace FinalBack.Controllers
{
    public class AboutController : Controller
    {
        private readonly AppDbContext context;

        public AboutController(AppDbContext context)
        {
            this.context = context;
        }
        public IActionResult Index()
        {
            AboutVM aboutVM = new AboutVM
            { Brands = context.Brands.ToList(),
                 AboutUs = context.AboutUs.FirstOrDefault(),
                Questions = context.Questions.Where(c => c.IsAcces == true).ToList(),
                Members = context.Members.Include(c=>c.SocialMedias).ToList()
            };
            return View(aboutVM);
        }
    }
}
