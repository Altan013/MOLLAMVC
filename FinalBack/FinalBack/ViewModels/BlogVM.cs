using FinalBack.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FinalBack.ViewModels
{
    public class BlogVM
    {
        public List<Blog> Blogs { get; set; }
        public Blog Blog { get; set; }
        public List<Tag> Tags { get; set; }
    }
}
