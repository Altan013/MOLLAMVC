﻿using FinalBack.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FinalBack.ViewModels
{
    public class ContactVM
    {
        public Contact Contact { get; set; }
        public List<Store> Stores { get; set; }
        public Questions Question { get; set; }
    }
}
