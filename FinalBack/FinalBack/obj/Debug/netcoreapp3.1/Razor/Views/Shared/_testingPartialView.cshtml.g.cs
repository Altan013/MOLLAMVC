#pragma checksum "C:\Users\lenovo\Desktop\FINAL PROJECT\FinalBack\FinalBack\Views\Shared\_testingPartialView.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "7daa8fbf05ac7469f87fe452a15791157045d7eb"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared__testingPartialView), @"mvc.1.0.view", @"/Views/Shared/_testingPartialView.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\lenovo\Desktop\FINAL PROJECT\FinalBack\FinalBack\Views\_ViewImports.cshtml"
using FinalBack;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\lenovo\Desktop\FINAL PROJECT\FinalBack\FinalBack\Views\_ViewImports.cshtml"
using FinalBack.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\lenovo\Desktop\FINAL PROJECT\FinalBack\FinalBack\Views\_ViewImports.cshtml"
using FinalBack.ViewModels;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"7daa8fbf05ac7469f87fe452a15791157045d7eb", @"/Views/Shared/_testingPartialView.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"df184430efe1c865849e19c87aed87f704322907", @"/Views/_ViewImports.cshtml")]
    public class Views_Shared__testingPartialView : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<ShopVM>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\n");
#nullable restore
#line 3 "C:\Users\lenovo\Desktop\FINAL PROJECT\FinalBack\FinalBack\Views\Shared\_testingPartialView.cshtml"
 foreach (var item in Model.Products)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <h1>");
#nullable restore
#line 5 "C:\Users\lenovo\Desktop\FINAL PROJECT\FinalBack\FinalBack\Views\Shared\_testingPartialView.cshtml"
   Write(item.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h1>\n");
#nullable restore
#line 6 "C:\Users\lenovo\Desktop\FINAL PROJECT\FinalBack\FinalBack\Views\Shared\_testingPartialView.cshtml"
}

#line default
#line hidden
#nullable disable
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<ShopVM> Html { get; private set; }
    }
}
#pragma warning restore 1591