using BusinessLayer;
using BusinessLayer.Interface;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Mvc;
using Web.Model;

namespace Web.Controllers
{
    public class HomeController : Controller
    {
        #region Get System IP

        public string SystemIP()
        {
            string Ipaddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (string.IsNullOrEmpty(Ipaddress))
            {
                Ipaddress = Request.ServerVariables["REMOTE_ADDR"];
            }

            return Ipaddress;
        }

        #endregion
        public ActionResult Index()
        {
            HomeModel Model = new HomeModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Banner_Obj = Master_Manager_Obj.GetBanner(0);
            Model.List_About_Obj = Master_Manager_Obj.GetAbout(0);
            Model.List_Product_Obj = Master_Manager_Obj.GetProduct(0);
            Model.List_Services_Obj = Master_Manager_Obj.GetServices(0);
            Model.List_Gallery_Obj = Master_Manager_Obj.GetGallery(0);
            Model.List_Contact_Obj = Master_Manager_Obj.GetContact(0);
            Model.List_Blog_Obj = Master_Manager_Obj.GetBlog(0);
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
        public ActionResult About()
        {
            HomeModel Model = new HomeModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_About_Obj = Master_Manager_Obj.GetAbout(0);
            return View(Model);
        }
        public ActionResult Our_history()
        {
            return View();
        }
        public ActionResult Product()
        {
            HomeModel Model = new HomeModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Product_Obj = Master_Manager_Obj.GetProduct(0);
            return View(Model);
        }
        public ActionResult ProductDetails(int Product_Id)
        {
            HomeModel Model = new HomeModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.ProductDetails__Business_Obj = Master_Manager_Obj.GetProductDetails(0, Product_Id).FirstOrDefault();
            return View(Model);
        }
        
        public ActionResult BlogDetails(int Blog_Id)
        {
            HomeModel Model = new HomeModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            
            Model.BlogDetails_Business_Obj = Master_Manager_Obj.GetBlogDetails(0, Blog_Id).FirstOrDefault();
            Model.List_BlogDetails_Businesses_obj = Master_Manager_Obj.GetBlogDetails(0, 0);
            Model.List_customberFeedback_Businesses_obj = Master_Manager_Obj.GetCustomberFeedback(0, 1);
            return View(Model);
        }
        public ActionResult Contact()
        {
            HomeModel Model = new HomeModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Contact_Obj = Master_Manager_Obj.GetContact(0);
            return View(Model);
        }
        public ActionResult Gallery()
        {
            HomeModel Model = new HomeModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Gallery_Obj = Master_Manager_Obj.GetGallery(0);
            return View(Model);
           
        }
        public ActionResult SendToEmail(HomeModel Model)
        {

            //email codeing
            string to = "support@greenagroharvest.com"; //To address     imishra.sbcreation@gmail.com
            string from = "noreply@sbcreationgroup.com"; //From address    
            MailMessage message = new MailMessage(from, to);
            message.Subject = "The Green Agro Harvests Contact Form ";
            message.Body = "<strong>Customer Enquiry For The Green Agro Harvests whose Detail is :- </strong><br> <br>" +
                "<table border='1' cellpadding='10' cellspacing='5'  class='table table-bordered table-responsive'>" +
                "<tr><th> Name : </th ><td> " + Model.Contact_Obj.Contact_Name + "</td></tr >" +
                "<tr><th> Phone No : </th ><td> " + Model.Contact_Obj.Contact_Number + " </td >" +
                "</tr><tr><th> Email Id : </th><td> " + Model.Contact_Obj.Contact_Email + " </td></tr>" +
                "</tr><tr><th> Messages : </th><td> " + Model.Contact_Obj.Contact_Subject + " </td></tr>" +
                "</tr><tr><th> Comment : </th><td> " + Model.Contact_Obj.Contact_Comment + " </td></tr>";

            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("noreply@sbcreationgroup.com", "Sbcreation@1");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            string output;
            try
            {
                client.Send(message);

                output = "success";
                if (output != "success")
                {
                    TempData["DisplayMessage"] = "Fail";
                }
                else
                {
                    //MessageBox.Show("You re welcome! If you have any more questions or if there's anything else I can help you with in the future, feel free to ask.Have a great day!");
                    TempData["DisplayMessage"] = "Add";
                }

            }
            catch (Exception ex)
            {

                output = "invalid";
                if (output != "invalid")
                {
                    TempData["DisplayMessage"] = "Fail";

                }
                throw ex;
            }
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Contact_Obj.Created_By = 1;
            Model.Contact_Obj.Created_IP = SystemIP();
            int Id = Master_Manager_Obj.SaveContact(Model.Contact_Obj);
            return RedirectToAction("Contact");
        }

        public ActionResult Services()
        {
            HomeModel Model = new HomeModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Services_Obj = Master_Manager_Obj.GetServices(0);
            return View(Model);
        }
        #region CustomerFeedback
       
        public ActionResult CustomberFeedback()
        {
            HomeModel Model = new HomeModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Status_Obj = Master_Manager_Obj.GetStatus(0);
            Model.List_customberFeedback_Businesses_obj = Master_Manager_Obj.GetCustomberFeedback(0, 0);
            return View(Model);
        }
        [HttpPost]
       
        public ActionResult SaveCustomberFeedBack(HomeModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.CustomberFeedback_Obj.Created_By = 1;
            Model.CustomberFeedback_Obj.Created_IP = SystemIP();
            Model.CustomberFeedback_Obj.Fk_Status_Id =3;
            int Id = Master_Manager_Obj.SaveCustomberFeedback(Model.CustomberFeedback_Obj);

            return RedirectToAction("BlogDetails",new { Blog_Id =Model.BlogDetails_Business_Obj .BlogDetails_Id});
        }
        
        #endregion

    }
}