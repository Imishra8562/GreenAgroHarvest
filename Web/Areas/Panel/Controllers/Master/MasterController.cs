using BusinessLayer;
using BusinessLayer.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web.Areas.Panel.Model;
using Web.Controllers;

namespace Web.Areas.Panel.Controllers
{
    public class MasterController : Controller
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

        #region Banner
     [CookiesExpireFilter]
        public ActionResult Banner()
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Banner_Obj = Master_Manager_Obj.GetBanner(0);
            return View(Model);

        }

        [HttpPost]
       [CookiesExpireFilter]
        public ActionResult SaveBanner(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Banner_Obj.Created_By = 1;
            Model.Banner_Obj.Created_IP = SystemIP();

            if (Model.Banner_image != null)
            {
                string extension = System.IO.Path.GetExtension(Model.Banner_image.FileName);
                Model.Banner_image.SaveAs(Server.MapPath("~/Upload/Banner/" + Model.Banner_image.FileName));
                string FilePathForPhoto = "~/Upload/Banner/" + Model.Banner_image.FileName;
                Model.Banner_Obj.Banner_image = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.SaveBanner(Model.Banner_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Banner Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Add Banner!";
            }
            return RedirectToAction("Banner");
        }
      [CookiesExpireFilter]
        public ActionResult EditBanner(int Banner_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Banner_Obj = Master_Manager_Obj.GetBanner(Banner_Id).FirstOrDefault();
            return View(Model);
        }
      [CookiesExpireFilter]
        public ActionResult UpdateBanner(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Banner_Obj.Modified_By = 1;
            Model.Banner_Obj.Modified_IP = SystemIP();
            if (Model.Banner_image != null)
            {
                string extension = System.IO.Path.GetExtension(Model.Banner_image.FileName);
                Model.Banner_image.SaveAs(Server.MapPath("~/Upload/Banner/" + Model.Banner_image.FileName));
                string FilePathForPhoto = "~/Upload/Banner/" + Model.Banner_image.FileName;
                Model.Banner_Obj.Banner_image = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.UpdateBanner(Model.Banner_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = " Updated Banner Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Update Banner !";
            }
            return RedirectToAction("Banner");

        }
       [CookiesExpireFilter]
        public ActionResult DeleteBanner(int Banner_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();

            int id = Master_Manager_Obj.DeleteBanner(Banner_Id);
            
            if (id != 0 && id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Delete Banner !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete Banner !";
            }
            return RedirectToAction("Banner");
        }


        #endregion
        #region About
        [CookiesExpireFilter]
        public ActionResult About()
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_About_Obj = Master_Manager_Obj.GetAbout(0);
            return View(Model);

        }

        [HttpPost]
        [CookiesExpireFilter]
        public ActionResult SaveAbout(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.About_Obj.Created_By = 1;
            Model.About_Obj.Created_IP = SystemIP();

            if (Model.Image != null)
            {
                string extension = System.IO.Path.GetExtension(Model.Image.FileName);
                Model.Image.SaveAs(Server.MapPath("~/Upload/About/" + Model.Image.FileName));
                string FilePathForPhoto = "~/Upload/About/" + Model.Image.FileName;
                Model.About_Obj.Image = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.SaveAbout(Model.About_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "About Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Add About!";
            }
          
            return RedirectToAction("About");
        }
        [CookiesExpireFilter]
        public ActionResult EditAbout(int About_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.About_Obj = Master_Manager_Obj.GetAbout(About_Id).FirstOrDefault();
            return View(Model);
        }
        [CookiesExpireFilter]
        public ActionResult UpdateAbout(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.About_Obj.Modified_By = 1;
            Model.About_Obj.Modified_IP = SystemIP();
            if (Model.Image != null)
            {
                string extension = System.IO.Path.GetExtension(Model.Image.FileName);
                Model.Image.SaveAs(Server.MapPath("~/Upload/About/" + Model.Image.FileName));
                string FilePathForPhoto = "~/Upload/About/" + Model.Image.FileName;
                Model.About_Obj.Image = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.UpdateAbout(Model.About_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "About Update Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Update About!";
            }

            return RedirectToAction("About");

        }
       [CookiesExpireFilter]
        public ActionResult DeleteAbout(int About_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();

            int id = Master_Manager_Obj.DeleteAbout(About_Id);
            if (id != 0 && id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "About Delete Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete About!";
            }

            return RedirectToAction("About");
        }

        #endregion
        #region Product
      [CookiesExpireFilter]
        public ActionResult Product()
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Product_Obj = Master_Manager_Obj.GetProduct(0);
            return View(Model);

        }

        [HttpPost]
       [CookiesExpireFilter]
        public ActionResult SaveProduct(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Product_Obj.Created_By = 1;
            Model.Product_Obj.Created_IP = SystemIP();

            if (Model.Product_Image != null)
            {
                string extension = System.IO.Path.GetExtension(Model.Product_Image.FileName);
                Model.Product_Image.SaveAs(Server.MapPath("~/Upload/Product/" + Model.Product_Image.FileName));
                string FilePathForPhoto = "~/Upload/Product/" + Model.Product_Image.FileName;
                Model.Product_Obj.Product_Image = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.SaveProduct(Model.Product_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Product Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Add Product!";
            }

            return RedirectToAction("Product");
        }
        [CookiesExpireFilter]
        public ActionResult EditProduct(int Product_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Product_Obj = Master_Manager_Obj.GetProduct(Product_Id).FirstOrDefault();
            return View(Model);
        }
        [CookiesExpireFilter]
        public ActionResult UpdateProduct(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Product_Obj.Modified_By = 1;
            Model.Product_Obj.Modified_IP = SystemIP();
            if (Model.Product_Image != null)
            {
                string extension = System.IO.Path.GetExtension(Model.Product_Image.FileName);
                Model.Product_Image.SaveAs(Server.MapPath("~/Upload/Product/" + Model.Product_Image.FileName));
                string FilePathForPhoto = "~/Upload/Product/" + Model.Product_Image.FileName;
                Model.Product_Obj.Product_Image = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.UpdateProduct(Model.Product_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Product Update Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Update Product!";
            }

            return RedirectToAction("Product");

        }
       [CookiesExpireFilter]
        public ActionResult DeleteProduct(int Product_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();

            int id = Master_Manager_Obj.DeleteProduct(Product_Id);
            if (id != 0 && id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Delete Product Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete Product!";
            }

            return RedirectToAction("Product");
        }

        #endregion
        #region ProductDetails
        [CookiesExpireFilter]
        public ActionResult ProductDetails()
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Product_Obj = Master_Manager_Obj.GetProduct(0);
            Model.List_ProductDetails_Business_Obj = Master_Manager_Obj.GetProductDetails(0, 0);
            return View(Model);

        }

        [HttpPost]
        [CookiesExpireFilter]
        public ActionResult SaveProductDetails(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.ProductDetails_Obj.Created_By = 1;
            Model.ProductDetails_Obj.Created_IP = SystemIP();

            if (Model.ProductDetails_Image != null)
            {
                string extension = System.IO.Path.GetExtension(Model.ProductDetails_Image.FileName);
                Model.ProductDetails_Image.SaveAs(Server.MapPath("~/Upload/ProductDetails/" + Model.ProductDetails_Image.FileName));
                string FilePathForPhoto = "~/Upload/ProductDetails/" + Model.ProductDetails_Image.FileName;
                Model.ProductDetails_Obj.ProductDetails_Image = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.SaveProductDetails(Model.ProductDetails_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "ProductDetails Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Add ProductDetails!";
            }

            return RedirectToAction("ProductDetails");
        }

        
       [CookiesExpireFilter]
        public ActionResult EditProductDetails(int ProductDetails_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.ProductDetails_Obj = Master_Manager_Obj.GetProductDetails(ProductDetails_Id, 0).FirstOrDefault();
            Model.List_Product_Obj = Master_Manager_Obj.GetProduct(0);        
            return View(Model);
        }

       [CookiesExpireFilter]
        public ActionResult UpdateProductDetails(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.ProductDetails_Obj.Modified_By = 1;
            Model.ProductDetails_Obj.Modified_IP = SystemIP();
            if (Model.ProductDetails_Image != null)
            {
                string extension = System.IO.Path.GetExtension(Model.ProductDetails_Image.FileName);
                Model.ProductDetails_Image.SaveAs(Server.MapPath("~/Upload/ProductDetails/" + Model.ProductDetails_Image.FileName));
                string FilePathForPhoto = "~/Upload/ProductDetails/" + Model.ProductDetails_Image.FileName;
                Model.ProductDetails_Obj.ProductDetails_Image = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.UpdateProductDetails(Model.ProductDetails_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "ProductDetails Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Add ProductDetails!";
            }

            return RedirectToAction("ProductDetails");

        }
        [CookiesExpireFilter]
        public ActionResult DeleteProductDetails(int ProductDetails_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();

            int id = Master_Manager_Obj.DeleteProductDetails(ProductDetails_Id);
            if (id != 0 && id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "ProductDetails Delete Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete ProductDetails!";
            }

            return RedirectToAction("ProductDetails");
        }

        #endregion
        #region AboutDetails
        [CookiesExpireFilter]
        public ActionResult AboutDetails()
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Banner_Obj = Master_Manager_Obj.GetBanner(0);
            Model.List_About_Obj = Master_Manager_Obj.GetAbout(0);
            Model.List_AboutDetails_Business_Obj = Master_Manager_Obj.GetAboutDetails(0, 0, 0);
            return View(Model);
        }
        [HttpPost]
       [CookiesExpireFilter]
        public ActionResult SaveAboutDetails(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.AboutDetails_Obj.Created_By = 1;
            Model.AboutDetails_Obj.Created_IP = SystemIP();


            int Id = Master_Manager_Obj.SaveAboutDetails(Model.AboutDetails_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "AboutDetails Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Add AboutDetails!";
            }

            return RedirectToAction("AboutDetails");

        }
        [CookiesExpireFilter]
        public ActionResult EditAboutDetails(int AboutDetails_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.AboutDetails_Obj = Master_Manager_Obj.GetAboutDetails(AboutDetails_Id, 0, 0).FirstOrDefault();
            Model.List_About_Obj = Master_Manager_Obj.GetAbout(0);
            Model.List_Banner_Obj = Master_Manager_Obj.GetBanner(0);
            return View(Model);
        }
        [CookiesExpireFilter]
        public ActionResult UpdateAboutDetails(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.AboutDetails_Obj.Modified_By = 1;
            Model.AboutDetails_Obj.Modified_IP = SystemIP();
            int Id = Master_Manager_Obj.UpdateAboutDetails(Model.AboutDetails_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "AboutDetails Update Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Update AboutDetails!";
            }

            return RedirectToAction("AboutDetails");

        }
       [CookiesExpireFilter]
        public ActionResult DeleteAboutDetails(int AboutDetails_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();

            int Id = Master_Manager_Obj.DeleteAboutDetails(AboutDetails_Id);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Delete AboutDetails Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete AboutDetails!";
            }

            return RedirectToAction("AboutDetails");
        }
        #endregion
        #region Status
        [CookiesExpireFilter]
        public ActionResult Status()
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Status_Obj = Master_Manager_Obj.GetStatus(0);
            return View(Model);
        }
        [HttpPost]
       [CookiesExpireFilter]
        public ActionResult SaveStatus(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Status_Obj.Created_By = 1;
            Model.Status_Obj.Created_IP = SystemIP();
            int Id = Master_Manager_Obj.SaveStatus(Model.Status_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Status Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Add Status!";
            }

            return RedirectToAction("Status");
        }
        [CookiesExpireFilter]
        public ActionResult EditStatus(int Status_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Status_Obj = Master_Manager_Obj.GetStatus(Status_Id).FirstOrDefault();
            return View(Model);
        }
        [CookiesExpireFilter]
        public ActionResult UpdateStatus(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Status_Obj.Modified_By = 1;
            Model.Status_Obj.Modified_IP = SystemIP();
            int Id = Master_Manager_Obj.UpdateStatus(Model.Status_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Update Status Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Update Status!";
            }

            return RedirectToAction("Status");

        }
       [CookiesExpireFilter]
        public ActionResult DeleteStatus(int Status_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();

            int Id = Master_Manager_Obj.DeleteStatus(Status_Id);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Delete Status Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete Status!";
            }

            return RedirectToAction("Status");
        }
        #endregion
        #region Contact
        [CookiesExpireFilter]
        public ActionResult Contact()
        {
            MasterModel Model = new MasterModel();  //  Creates a new instance of the MasterModel to store contact data
            IMasterManager Master_Manager_Obj = new MasterManager();//Creates an instance of the manager class to interact with the business layer
            Model.List_Contact_Obj = Master_Manager_Obj.GetContact(0);//Retrieves contact data (assuming 0 means "fetch all contacts")

            return View(Model); //  Passes the populated model to the view for display
        }
        [HttpPost]     //This method handles POST requests   ...    Since this method is marked with [HttpPost], it receives form data submitted by the user from the Contact.cshtml view.

       [CookiesExpireFilter]
        public ActionResult SaveContact(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager(); //Creates an instance of the business layer manager
            Model.Contact_Obj.Created_By = 1; //Sets the creator ID(hardcoded as 1, but should ideally be dynamic)
            Model.Contact_Obj.Created_IP = SystemIP();// Captures the user's IP address
            int Id = Master_Manager_Obj.SaveContact(Model.Contact_Obj);//Calls the business layer method to save contact info
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Contact Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Add Contact!";
            }

            return RedirectToAction("Contact"); //Redirects the user to the Contact list page after saving
        }
        [CookiesExpireFilter]
        public ActionResult EditContact(int Contact_Id)
        {
            MasterModel Model = new MasterModel(); //Initializes a model object
            IMasterManager Master_Manager_Obj = new MasterManager();// Creates an instance of the business logic manager
            Model.Contact_Obj = Master_Manager_Obj.GetContact(Contact_Id).FirstOrDefault();//Fetches the contact details
            return View(Model); // Passes the model to the view
        }
       [CookiesExpireFilter]
        public ActionResult UpdateContact(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager(); //Business logic layer instance
            Model.Contact_Obj.Modified_By = 1;           //Setting modified user (hardcoded, ideally get from session)
            Model.Contact_Obj.Modified_IP = SystemIP();//Storing IP for tracking
            int Id = Master_Manager_Obj.UpdateContact(Model.Contact_Obj);//Updating contact in DB
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Update Contact Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Update Contact!";
            }

            return RedirectToAction("Contact"); //Redirecting back to contact list

        }
       [CookiesExpireFilter]
        public ActionResult DeleteContact(int Contact_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();// Business logic layer instance

            int Id = Master_Manager_Obj.DeleteContact(Contact_Id);//Deletes the contact
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Delete Contact Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete Contact!";
            }

            return RedirectToAction("Contact");//Redirects back to the contact list
        }
        #endregion
        #region CustomerFeedback
       [CookiesExpireFilter]
        public ActionResult CustomberFeedback()
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Status_Obj = Master_Manager_Obj.GetStatus(0);
            Model.List_customberFeedback_Businesses_obj = Master_Manager_Obj.GetCustomberFeedback(0, 0);
            return View(Model);
        }
        [HttpPost]
       [CookiesExpireFilter]
        public ActionResult SaveCustomberFeedBack(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.CustomberFeedback_Obj.Created_By = 1;
            Model.CustomberFeedback_Obj.Created_IP = SystemIP();
            int Id = Master_Manager_Obj.SaveCustomberFeedback(Model.CustomberFeedback_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "CustomberFeedBack Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to AddCustomberFeedBack!";
            }

            return RedirectToAction("CustomberFeedBack");
        }
       [CookiesExpireFilter]
        public ActionResult EditCustomberFeedBack(int CustomberFeedBack_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Status_Obj = Master_Manager_Obj.GetStatus(0);
            Model.CustomberFeedback_Obj = Master_Manager_Obj.GetCustomberFeedback(CustomberFeedBack_Id, 0).FirstOrDefault();
            return View(Model);
        }

        [CookiesExpireFilter]
        public ActionResult UpdateCustomerFeedbackStatus(int CustomberFeedback_Id, int status)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            MasterModel Model = new MasterModel();
            Model.CustomberFeedback_Obj = Master_Manager_Obj.GetCustomberFeedback(CustomberFeedback_Id, 0).FirstOrDefault();
            if (status == 1)
            {
                Model.CustomberFeedback_Obj.Fk_Status_Id = 1;
            }
            else
            {
                Model.CustomberFeedback_Obj.Fk_Status_Id = 2;
            }
            Model.CustomberFeedback_Obj.Modified_On = DateTime.Now;
            Model.CustomberFeedback_Obj.Modified_IP = SystemIP();
            int Id = Master_Manager_Obj.UpdateCustomberFeedback(Model.CustomberFeedback_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Update CustomerFeedbackStatus Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Update CustomerFeedbackStatus!";
            }

            return RedirectToAction("CustomberFeedback");
        }

        [CookiesExpireFilter]
        public ActionResult UpdateCustomberFeedBack(MasterModel Model)
        {

            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.CustomberFeedback_Obj.Modified_On = DateTime.Now;
            Model.CustomberFeedback_Obj.Modified_IP = SystemIP();
            int Id = Master_Manager_Obj.UpdateCustomberFeedback(Model.CustomberFeedback_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Update CustomberFeedBack Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Update CustomberFeedBack!";
            }


            return RedirectToAction("CustomberFeedBack");
        }
        [CookiesExpireFilter]
        public ActionResult DeleteCustomberFeedback(int CustomberFeedBack_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            int Id = Master_Manager_Obj.DeleteCustomberFeedback(CustomberFeedBack_Id);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Delete CustomberFeedback Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete CustomberFeedback!";
            }

            return RedirectToAction("CustomberFeedBack");
        }
        #endregion
        #region Blog
        [CookiesExpireFilter]
        public ActionResult Blog()
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Blog_Obj = Master_Manager_Obj.GetBlog(0);
            return View(Model);

        }
        [HttpPost]
        [CookiesExpireFilter]
        public ActionResult SaveBlog(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Blog_Obj.Created_By = 1;
            Model.Blog_Obj.Created_IP = SystemIP();
            if (Model.Blog_Image != null && Model.Blog_Image.ContentLength > 0)
            {
                string extension = System.IO.Path.GetExtension(Model.Blog_Image.FileName);
                Model.Blog_Image.SaveAs(Server.MapPath("~/Upload/Blog_Image_File/" + Model.Blog_Image.FileName));
                string FilePathForPhoto = "~/Upload/Blog_Image_File/" + Model.Blog_Image.FileName;
                Model.Blog_Obj.Blog_Image = FilePathForPhoto;
            }
            else
            {
               
            }
            int Id = Master_Manager_Obj.SaveBlog(Model.Blog_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Blog Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Add Blog!";
            }

            return RedirectToAction("Blog");
        }
        [CookiesExpireFilter]
        public ActionResult EditBlog(int Blog_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Blog_Obj = Master_Manager_Obj.GetBlog(Blog_Id).FirstOrDefault();
            return View(Model);
        }
        [CookiesExpireFilter]
        public ActionResult UpdateBlog(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Blog_Obj.Modified_By = 1;
            Model.Blog_Obj.Modified_IP = SystemIP();
            if (Model.Blog_Image != null && Model.Blog_Image.ContentLength > 0)
            {
                string extension = System.IO.Path.GetExtension(Model.Blog_Image.FileName);
                Model.Blog_Image.SaveAs(Server.MapPath("~/Upload/Blog_Image_File/" + Model.Blog_Image.FileName));
                string FilePathForPhoto = "~/Upload/Blog_Image_File/" + Model.Blog_Image.FileName;
                Model.Blog_Obj.Blog_Image = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.UpdateBlog(Model.Blog_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Update Blog Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Update Blog!";
            }

            return RedirectToAction("Blog");
        }
        [CookiesExpireFilter]
        public ActionResult DeleteBlog(int Blog_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            int Id = Master_Manager_Obj.DeleteBlog(Blog_Id);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Delete Blog Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete Blog!";
            }

            return RedirectToAction("Blog");
        }

        #endregion
        #region BlogDetails
       [CookiesExpireFilter]
        public ActionResult BlogDetails()
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Blog_Obj = Master_Manager_Obj.GetBlog(0);
            Model.List_BlogDetails_Businesses_obj = Master_Manager_Obj.GetBlogDetails(0, 0);
           return View(Model);
        }
        [HttpPost]
        [CookiesExpireFilter]
        public ActionResult SaveBlogDetails(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.BlogDetails_Obj.Created_By = 1;
            Model.BlogDetails_Obj.Created_IP = SystemIP();
            if (Model.BlogDetails_Image != null)
            {
                string extension = System.IO.Path.GetExtension(Model.BlogDetails_Image.FileName);
                Model.BlogDetails_Image.SaveAs(Server.MapPath("~/Upload/BlogDetails_Image/" + Model.BlogDetails_Image.FileName));
                string FilePathForPhoto = "~/Upload/BlogDetails_Image/" + Model.BlogDetails_Image.FileName;
                Model.BlogDetails_Obj.BlogDetails_Image = FilePathForPhoto;
            }
            else
            {

            }
            if (Model.BlogDetails_ImageA != null)
            {
                string extension = System.IO.Path.GetExtension(Model.BlogDetails_ImageA.FileName);
                Model.BlogDetails_ImageA.SaveAs(Server.MapPath("~/Upload/BlogDetails_ImageA/" + Model.BlogDetails_ImageA.FileName));
                string FilePathForPhoto = "~/Upload/BlogDetails_ImageA/" + Model.BlogDetails_ImageA.FileName;
                Model.BlogDetails_Obj.BlogDetails_ImageA = FilePathForPhoto;
            }
            else
            {

            }
            if (Model.BlogDetails_ImageB != null)
            {
                string extension = System.IO.Path.GetExtension(Model.BlogDetails_ImageB.FileName);
                Model.BlogDetails_ImageB.SaveAs(Server.MapPath("~/Upload/BlogDetails_ImageB/" + Model.BlogDetails_ImageB.FileName));
                string FilePathForPhoto = "~/Upload/BlogDetails_ImageB/" + Model.BlogDetails_ImageB.FileName;
                Model.BlogDetails_Obj.BlogDetails_ImageB = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.SaveBlogDetails(Model.BlogDetails_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Blog Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Add Blog!";
            }

            return RedirectToAction("BlogDetails");
        }
        [CookiesExpireFilter]
        public ActionResult EditBlogDetails(int BlogDetails_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Blog_Obj = Master_Manager_Obj.GetBlog(0);
            Model.BlogDetails_Obj = Master_Manager_Obj.GetBlogDetails(BlogDetails_Id, 0).FirstOrDefault();
            return View(Model);
        }
        [CookiesExpireFilter]
        public ActionResult UpdateBlogDetails(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.BlogDetails_Obj.Modified_By = 1;
            Model.BlogDetails_Obj.Modified_IP = SystemIP();
            if (Model.BlogDetails_Image != null)
            {
                string extension = System.IO.Path.GetExtension(Model.BlogDetails_Image.FileName);
                Model.BlogDetails_Image.SaveAs(Server.MapPath("~/Upload/BlogDetails_Image/" + Model.BlogDetails_Image.FileName));
                string FilePathForPhoto = "~/Upload/BlogDetails_Image/" + Model.BlogDetails_Image.FileName;
                Model.BlogDetails_Obj.BlogDetails_Image = FilePathForPhoto;
            }
            else
            {

            }
            if (Model.BlogDetails_ImageA != null)
            {
                string extension = System.IO.Path.GetExtension(Model.BlogDetails_ImageA.FileName);
                Model.BlogDetails_ImageA.SaveAs(Server.MapPath("~/Upload/BlogDetails_ImageA/" + Model.BlogDetails_ImageA.FileName));
                string FilePathForPhoto = "~/Upload/BlogDetails_ImageA/" + Model.BlogDetails_ImageA.FileName;
                Model.BlogDetails_Obj.BlogDetails_ImageA = FilePathForPhoto;
            }
            else
            {

            }
            if (Model.BlogDetails_ImageB != null)
            {
                string extension = System.IO.Path.GetExtension(Model.BlogDetails_ImageB.FileName);
                Model.BlogDetails_ImageB.SaveAs(Server.MapPath("~/Upload/BlogDetails_ImageB/" + Model.BlogDetails_ImageB.FileName));
                string FilePathForPhoto = "~/Upload/BlogDetails_ImageB/" + Model.BlogDetails_ImageB.FileName;
                Model.BlogDetails_Obj.BlogDetails_ImageB = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.UpdateBlogDetails(Model.BlogDetails_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Update BlogDetails Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Update BlogDetails!";
            }

            return RedirectToAction("BlogDetails");
        }
        [CookiesExpireFilter]
        public ActionResult DeleteBlogDetails(int BlogDetails_Id)
        {
            MasterManager Model = new MasterManager();
            IMasterManager Master_Manager_Obj = new MasterManager();
            int Id = Master_Manager_Obj.DeleteBlogDetails(BlogDetails_Id);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Delete BlogDetails Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete BlogDetails!";
            }

            return RedirectToAction("BlogDetails");
        }
        #endregion
        #region Gallery
        [CookiesExpireFilter]
        public ActionResult Gallery()
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Gallery_Obj = Master_Manager_Obj.GetGallery(0);
            return View(Model);
        }
        [HttpPost]
        [CookiesExpireFilter]
        public ActionResult SaveGallery(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Gallery_Obj.Created_By = 1;
            Model.Gallery_Obj.Created_IP = SystemIP();
            if (Model.Gallery_Image != null)
            {
                string extension = System.IO.Path.GetExtension(Model.Gallery_Image.FileName);
                Model.Gallery_Image.SaveAs(Server.MapPath("~/Upload/Gallery_Image" + Model.Gallery_Image.FileName));
                string FilePathForPhoto = "~/Upload/Gallery_Image" + Model.Gallery_Image.FileName;
                Model.Gallery_Obj.Gallery_Image = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.SaveGallery(Model.Gallery_Obj); 
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Gallery Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Add Gallery !";
            }

            return RedirectToAction("Gallery");
        }
        [CookiesExpireFilter]
        public ActionResult EditGallery(int Gallery_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Gallery_Obj = Master_Manager_Obj.GetGallery(Gallery_Id).FirstOrDefault();
            return View(Model);
        }
        [CookiesExpireFilter]
        public ActionResult UpdateGallery(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Gallery_Obj.Modified_By = 1;
            Model.Gallery_Obj.Modified_IP = SystemIP();
            if (Model.Gallery_Image != null)
            {
                string extension = System.IO.Path.GetExtension(Model.Gallery_Image.FileName);
                Model.Gallery_Image.SaveAs(Server.MapPath("~/Upload/Gallery_Image/" + Model.Gallery_Image.FileName));
                string FilePathForPhoto = "~/Upload/Gallery_Image/" + Model.Gallery_Image.FileName;
                Model.Gallery_Obj.Gallery_Image = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.UpdateGallery(Model.Gallery_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Update Gallery Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Add Update Gallery!";
            }

            return RedirectToAction("Gallery");
        }
        [CookiesExpireFilter]
        public ActionResult DeleteGallery(int Gallery_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            int Id = Master_Manager_Obj.DeleteGallery(Gallery_Id);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Delete Gallery Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete Gallery!";
            }

            return RedirectToAction("Gallery");
        }
        #endregion
        #region Services
        [CookiesExpireFilter]
        public ActionResult Services()
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.List_Services_Obj = Master_Manager_Obj.GetServices(0);
            return View(Model);
        }
        [HttpPost]
        [CookiesExpireFilter]
        public ActionResult SaveServices(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Services_Obj.Created_By = 1;
            Model.Services_Obj.Created_IP = SystemIP();
            if (Model.Services_Image != null)
            {
                string extension = System.IO.Path.GetExtension(Model.Services_Image.FileName);
                Model.Services_Image.SaveAs(Server.MapPath("~/Upload/Services_Image/" + Model.Services_Image.FileName));
                string FilePathForPhoto = "~/Upload/Services_Image/" + Model.Services_Image.FileName;
                Model.Services_Obj.Services_Image = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.SaveServices(Model.Services_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Services Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Add Services!";
            }

            return RedirectToAction("Services");
        }
        [CookiesExpireFilter]
        public ActionResult EditServices(int Services_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Services_Obj = Master_Manager_Obj.GetServices(Services_Id).FirstOrDefault();
            return View(Model);
        }
        [CookiesExpireFilter]
        public ActionResult UpdateServices(MasterModel Model)
        {
            IMasterManager Master_Manager_Obj = new MasterManager();
            Model.Services_Obj.Modified_By = 1;
            Model.Services_Obj.Modified_IP = SystemIP();
            if (Model.Services_Image != null)
            {
                string extension = System.IO.Path.GetExtension(Model.Services_Image.FileName);
                Model.Services_Image.SaveAs(Server.MapPath("~/Upload/Services_Image/" + Model.Services_Image.FileName));
                string FilePathForPhoto = "~/Upload/Services_Image/" + Model.Services_Image.FileName;
                Model.Services_Obj.Services_Image = FilePathForPhoto;
            }
            else
            {

            }
            int Id = Master_Manager_Obj.UpdateServices(Model.Services_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Update Services Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Update Services!";
            }

            return RedirectToAction("Services");
        }
        [CookiesExpireFilter]
        public ActionResult DeleteServices(int Services_Id)
        {
            MasterModel Model = new MasterModel();
            IMasterManager Master_Manager_Obj = new MasterManager();
            int Id = Master_Manager_Obj.DeleteServices(Services_Id);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Delete Services Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete Services!";
            }

            return RedirectToAction("Services");
        }
        #endregion

        


    }
}