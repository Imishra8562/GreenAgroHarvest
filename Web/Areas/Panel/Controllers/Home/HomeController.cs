using BusinessLayer;
using BusinessLayer.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web.Controllers;
using Web.Model;

namespace Web.Areas.Panel.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        [CookiesExpireFilter]
        public ActionResult Index()
        {
            HomeModel Model = new HomeModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Banner_Obj = Master_Manager_Obj.GetBanner(0);
            Model.List_Contact_Obj = Master_Manager_Obj.GetContact(0);
            Model.List_Product_Obj = Master_Manager_Obj.GetProduct(0);
            return View(Model);
            
        }
        
        public ActionResult Header()
        {

            return PartialView("_Header");
        }
        public ActionResult Footer()
        {
            return PartialView("_Footer");
        }
        public ActionResult Menu()
        {
            return PartialView("_Menu");
        }
    }
}
