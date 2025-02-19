using BusinessLayer;
using BusinessLayer.Interface;
using Common;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using Web.Areas.Panel.Model;
using Web.Controllers;

namespace Web.Areas.Panel.Controllers
{
    public class SecurityController : Controller
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

        #region Login
        public ActionResult Login()
        {
            return View();
        }

        #endregion

        #region User

        [CookiesExpireFilter]
        public ActionResult AdminUser(int? User_Id)
        {
            SecurityModel Model = new SecurityModel();
            ISecurityManager User_Manager_Obj = new SecurityManager();
            Model.List_User_Role_Obj = User_Manager_Obj.GetUserRole(0);
            Model.List_User_Business_Obj = User_Manager_Obj.GetUser(0, 0, null, null);
            if (User_Id.HasValue)
            {
                Model.User_Obj = User_Manager_Obj.GetUser(User_Id, 0, null, null).FirstOrDefault();
            }
            return View(Model);
            //return View();
        }

        [HttpPost]
      [CookiesExpireFilter]
        public ActionResult SaveUser(SecurityModel Model)
        {
            ISecurityManager User_Manager_Obj = new SecurityManager();
            Model.User_Obj.Created_By = 1;
            Model.User_Obj.Created_IP = SystemIP();
            Model.User_Obj.Created_On = DateTime.Now;
            Model.User_Obj.Password = Encoding.ASCII.GetBytes(Model.Password);
            int i = User_Manager_Obj.SaveUser(Model.User_Obj);

            if (i != 0 && i > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "User Deleted Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete User !";
            }
            return RedirectToAction("AdminUser");
        }

        [HttpPost]
      [CookiesExpireFilter]
        public ActionResult UpdateUser(SecurityModel Model)
        {
            ISecurityManager User_Manager_Obj = new SecurityManager();
            Model.User_Obj.Modified_By = Convert.ToInt32(CookiesStateManager.Cookies_Logged_User_Id);
            Model.User_Obj.Modified_IP = SystemIP();
            Model.User_Obj.Modified_On = DateTime.Now;
            if (Model.Password != null)
            {
                Model.User_Obj.Password = Encoding.ASCII.GetBytes(Model.Password);
            }
            int i = User_Manager_Obj.UpdateUser(Model.User_Obj);

            if (i != 0 && i > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "Admin User Updated Mission !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Update Admin User !";
            }

            return RedirectToAction("AdminUser");
        }
        public ActionResult DeleteUser(int User_Id)
        {
            ISecurityManager User_Manager_Obj = new SecurityManager();

            int i = User_Manager_Obj.DeleteUser(User_Id);
            if (i != 0 && i > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "User Deleted Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete User !";
            }
            return RedirectToAction("AdminUser");
        }
        #endregion

        #region User Role

      [CookiesExpireFilter]
        public ActionResult UserRole(int? User_Role_Id)
        {
            SecurityModel Model = new SecurityModel();
            ISecurityManager Security_Manager_Obj = new SecurityManager();

            Model.List_User_Role_Obj = Security_Manager_Obj.GetUserRole(0);
            if (User_Role_Id.HasValue)
            {
                Model.User_Role_Obj = Security_Manager_Obj.GetUserRole(User_Role_Id).FirstOrDefault();
            }
            return View(Model);
        }

        [HttpPost]
        [CookiesExpireFilter]
        public ActionResult SaveUserRole(SecurityModel Model)
        {

            ISecurityManager Security_Manager_Obj = new SecurityManager();

            Model.User_Role_Obj.Created_By = 1;
            Model.User_Role_Obj.Created_IP = SystemIP();

            int Id = Security_Manager_Obj.SaveUserRole(Model.User_Role_Obj);

            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "SUCCESS";
                TempData["AlertMessage"] = "UserRole Added Successfully !";
            }
            else
            {
                TempData["AlertType"] = "ERROR";
                TempData["AlertMessage"] = "Sorry, Failed to Add UserRole !";
            }

            return RedirectToAction("UserRole");
        }


        [HttpPost]
     [CookiesExpireFilter]
        public ActionResult UpdateUserRole(SecurityModel Model)
        {
            ISecurityManager Security_Manager_Obj = new SecurityManager();
            Model.User_Role_Obj.Modified_On = DateTime.Now;
            Model.User_Role_Obj.Modified_By = Convert.ToInt32(CookiesStateManager.Cookies_Logged_User_Id);
            Model.User_Role_Obj.Modified_IP = SystemIP();

            int Id = Security_Manager_Obj.UpdateUserRole(Model.User_Role_Obj);
            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "User Role Added Banner !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Add UserRole !";
            }

            return RedirectToAction("UserRole");
        }


        public ActionResult DeleteUserRole(int User_Role_Id)
        {
            ISecurityManager Security_Manager_Obj = new SecurityManager();

            int Id = Security_Manager_Obj.DeleteUserRole(User_Role_Id);


            if (Id != 0 && Id > 0)
            {
                TempData["AlertType"] = "success";
                TempData["AlertTitle"] = "SUCCESS";
                TempData["AlertMessage"] = "User Role Deleted Successfully !";
            }
            else
            {
                TempData["AlertType"] = "error";
                TempData["AlertTitle"] = "FAILED";
                TempData["AlertMessage"] = "Sorry, Failed to Delete User Role !";
            }
            return RedirectToAction("UserRole");
        }
        public ActionResult EditUserRole(int? User_Role_Id)
        {
            SecurityModel Model = new SecurityModel();
            ISecurityManager Security_Manager_Obj = new SecurityManager();

            Model.User_Role_Obj = Security_Manager_Obj.GetUserRole(User_Role_Id).FirstOrDefault();

            return View(Model);
        }


        #endregion

        #region Authenticate
        public ActionResult AuthenticateUser(string Mobile_No, string Password)
        {
            ISecurityManager SecurityManager_Obj = new SecurityManager();
            User_Business User_Business_Obj = new User_Business();

            byte[] Secured_Password = Encoding.ASCII.GetBytes(Password);

            User_Business_Obj = SecurityManager_Obj.SignIn(Mobile_No, Secured_Password);
            if (User_Business_Obj != null)
            {
                if (User_Business_Obj.FK_User_Role_Id == 0)
                {
                    AuthenticationManager.SignOutCurrentUser();
                    CookiesStateManager.Cookies_Logged_User_Id = null;
                    CookiesStateManager.Cookies_Logged_User_Name = null;
                    //CookiesStateManager.Cookies_Logged_Display_Name = null;
                    CookiesStateManager.Cookies_Logged_Email_Id = null;
                    CookiesStateManager.Cookies_Logged_User_Role_Id = null;
                    CookiesStateManager.Cookies_Logged_User_Role_Name = null;
                    CookiesStateManager.Cookies_Logged_Profile_Id = null;

                    TempData["DisplayMessage"] = "Incorrect";
                    return RedirectToAction("Login", "Security");
                }
                else
                {
                    if (User_Business_Obj.Is_Locked == false)
                    {
                        ISecurityManager Security_Manager_Obj = new SecurityManager();
                        User_Business User_Profile_Business_Obj = Security_Manager_Obj.GetUser(0, 0, null, null).FirstOrDefault();

                        User_Business_Obj.Last_Login = DateTime.Now;
                        SecurityManager_Obj.UpdateUser(User_Business_Obj);

                        CookiesStateManager.Cookies_Logged_User_Id = User_Business_Obj.User_Id.ToString();
                        CookiesStateManager.Cookies_Logged_User_Name = User_Business_Obj.User_Name;
                        //CookiesStateManager.Cookies_Logged_Display_Name = User_Business_Obj.Display_Name;
                        CookiesStateManager.Cookies_Logged_Email_Id = User_Business_Obj.Email_Id;
                        CookiesStateManager.Cookies_Logged_User_Role_Id = User_Business_Obj.FK_User_Role_Id.ToString();
                        CookiesStateManager.Cookies_Logged_User_Role_Name = User_Business_Obj.User_Role_Name;

                        if (User_Business_Obj.FK_User_Role_Id == 1 || User_Business_Obj.FK_User_Role_Id == 2 || User_Business_Obj.FK_User_Role_Id == 3 || User_Business_Obj.FK_User_Role_Id == 4)  // ADMIN
                        {
                            CookiesStateManager.Cookies_Logged_Profile_Id = User_Profile_Business_Obj.User_Id.ToString();

                            TempData["AlertType"] = "SUCCESS";
                            TempData["AlertMessage"] = "OK,Login Successfully !";
                            return RedirectToAction("Index", "Home");
                        }
                        else
                        {
                            AuthenticationManager.SignOutCurrentUser();
                            CookiesStateManager.Cookies_Logged_User_Id = null;
                            CookiesStateManager.Cookies_Logged_User_Name = null;
                            //CookiesStateManager.Cookies_Logged_Display_Name = null;
                            CookiesStateManager.Cookies_Logged_Email_Id = null;
                            CookiesStateManager.Cookies_Logged_User_Role_Id = null;
                            CookiesStateManager.Cookies_Logged_User_Role_Name = null;
                            CookiesStateManager.Cookies_Logged_Profile_Id = null;

                            TempData["AlertType"] = "ERROR";
                            TempData["AlertMessage"] = "Sorry, login credential does not match !";
                            return RedirectToAction("Login", "Security");
                        }
                    }
                    else
                    {
                        AuthenticationManager.SignOutCurrentUser();
                        CookiesStateManager.Cookies_Logged_User_Id = null;
                        CookiesStateManager.Cookies_Logged_User_Name = null;
                        //CookiesStateManager.Cookies_Logged_Display_Name = null;
                        CookiesStateManager.Cookies_Logged_Email_Id = null;
                        CookiesStateManager.Cookies_Logged_User_Role_Id = null;
                        CookiesStateManager.Cookies_Logged_User_Role_Name = null;
                        CookiesStateManager.Cookies_Logged_Profile_Id = null;


                        TempData["AlertType"] = "ERROR";
                        TempData["AlertMessage"] = "Sorry, Your Account Is Deactivate !";
                        return RedirectToAction("Login", "Security");
                    }
                }
            }
            else
            {
                AuthenticationManager.SignOutCurrentUser();
                CookiesStateManager.Cookies_Logged_User_Id = null;
                CookiesStateManager.Cookies_Logged_User_Name = null;
                //CookiesStateManager.Cookies_Logged_Display_Name = null;
                CookiesStateManager.Cookies_Logged_Email_Id = null;
                CookiesStateManager.Cookies_Logged_User_Role_Id = null;
                CookiesStateManager.Cookies_Logged_User_Role_Name = null;
                CookiesStateManager.Cookies_Logged_Profile_Id = null;

                TempData["AlertType"] = "ERROR";
                TempData["AlertMessage"] = "Sorry, login credential does not match !";

                return RedirectToAction("Login", "Security");
            }
        }
        #endregion

        #region Logout
        public ActionResult Logout()
        {
            Common.AuthenticationManager.SignOutCurrentUser();
            CookiesStateManager.Cookies_Logged_User_Id = null;
            CookiesStateManager.Cookies_Logged_User_Name = null;
            //CookiesStateManager.Cookies_Logged_Display_Name = null;
            CookiesStateManager.Cookies_Logged_Email_Id = null;
            CookiesStateManager.Cookies_Logged_User_Role_Id = null;
            CookiesStateManager.Cookies_Logged_User_Role_Name = null;
            CookiesStateManager.Cookies_Logged_Profile_Id = null;

            TempData["AlertType"] = "SUCCESS";
            TempData["AlertMessage"] = "OK,Logout Successfully !";
            return RedirectToAction("Login", "Security");
        }
        #endregion
    }
}