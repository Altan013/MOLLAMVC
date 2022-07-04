﻿using FinalBack.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FinalBack.ViewModels
{
    public class HomeVM
    {
        public List<Slider> Sliders { get; set; }
        public Category Category { get; set; }
        public List<Brand> Brands { get; set; }
        public Product Product { get; set; }
        public List<Product> Products { get; set; }
        public List<Blog> Blogs { get; set; }

        public Setting Settings { get; set; }

        public List<ProductSizeColor> ProductSizeColors { get; set; }
        public ProductSizeColor ProductSizeColor { get; set; }

        public List<ProductColor> ProductColors { get; set; }
        public List<ProductColor> ProductColors2 { get; set; }

        public List<Comment> Comments { get; set; }

        public Subscriber Subscriber { get; set; }
    }
}
