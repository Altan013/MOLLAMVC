﻿using FinalBack.DAL;
using FinalBack.Extensions;
using FinalBack.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FinalBack.Areas.Manage.Controllers
{
    [Area("Manage")]
    [Authorize(Roles = "SuperAdmin,Admin")]
    public class SettingController : Controller
    {
        private readonly AppDbContext _context;
        private IWebHostEnvironment _env;
        public SettingController(AppDbContext context, IWebHostEnvironment env)
        {
            _context = context;
            _env = env;
        }
        public IActionResult Index()
        {
            Setting setting = _context.Settings.FirstOrDefault();
            return View(setting);
        }

        public IActionResult Edit(int id)
        {
            Setting Setting = _context.Settings.FirstOrDefault(s => s.Id == id);
            return View(Setting);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(Setting setting)
        {

            Setting exist = _context.Settings.FirstOrDefault(s => s.Id == setting.Id);

            if (setting.HeaderLogoImageFile != null)
            {
                if (!setting.HeaderLogoImageFile.IsSizeOkay(2))
                {
                    ModelState.AddModelError("HeaderLogoImageFile", "Image size must be less than 2mb");
                    return View(exist);
                }
                if (!setting.HeaderLogoImageFile.IsImage())
                {
                    ModelState.AddModelError("HeaderLogoImageFile", "Select an image file! ");
                    return View(exist);
                }
                Helpers.Helper.DeleteImg(_env.WebRootPath, "assets/images/logos", exist.HeaderLogoImage);
                exist.HeaderLogoImage = setting.HeaderLogoImageFile.SaveImg(_env.WebRootPath, "assets/images/logos");
            }


            if (setting.FooterLogoImageFile != null)
            {
                if (!setting.FooterLogoImageFile.IsSizeOkay(2))
                {
                    ModelState.AddModelError("FooterLogoImageFile", "Image size must be less than 2mb");
                    return View(exist);
                }
                if (!setting.FooterLogoImageFile.IsImage())
                {
                    ModelState.AddModelError("FooterLogoImageFile", "Select an image file! ");
                    return View(exist);
                }
                Helpers.Helper.DeleteImg(_env.WebRootPath, "assets/images/logos", exist.FooterLogoImage);
                exist.FooterLogoImage = setting.FooterLogoImageFile.SaveImg(_env.WebRootPath, "assets/images/logos");
            }

            exist.BasketIcon = setting.BasketIcon;
            exist.FbIcon = setting.FbIcon;

            exist.Phone = setting.Phone;
            exist.SearchIcon = setting.SearchIcon;
            exist.FooterDesc = setting.FooterDesc;
            exist.Copyright = setting.Copyright;
            exist.YtLink = setting.YtLink;
            exist.YoutubeIcon = setting.YoutubeIcon;
            exist.WishlistIcon = setting.WishlistIcon;
            exist.LittleWishlist = setting.LittleWishlist;
            exist.InstaIcon = setting.InstaIcon;
            exist.PinterestLink = setting.PinterestLink;
            exist.TwitLink = setting.TwitLink;
            exist.FbLink = setting.FbLink;
            exist.InstaLink = setting.InstaLink;
            exist.TwitIcon = setting.TwitIcon;
            exist.PinterestIcon = setting.PinterestIcon;

            exist.HomePageDeliveryIcon = setting.HomePageDeliveryIcon;
            exist.HomePagePaymentIcon = setting.HomePagePaymentIcon;
            exist.HomePageSupportIcon = setting.HomePageSupportIcon;
            exist.HomePageRefundIcon = setting.HomePageRefundIcon;
            exist.UserIcon = setting.UserIcon;


            _context.SaveChanges();
            return RedirectToAction(nameof(Index));
        }
    }
}
