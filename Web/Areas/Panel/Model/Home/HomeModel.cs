
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web.Areas.Panel.Model.Home
{
    public class HomeModel
    {
        #region Banner
        public Banner Banner_Obj { get; set; }
        public IList<Banner> List_Banner_Obj { get; set; }
        #endregion
        #region Product
        public Product Product_Obj { get; set; }
        public IList<Product> List_Product_Obj { get; set; }
        #endregion 
        #region Contact
        public Contact Contact_Obj { get; set; }
        public IList<Contact> List_Contact_Obj { get; set; }
        #endregion
        #region User
        public User User_Obj { get; set; }
        public User_Business User_Business_Obj { get; set; }
        public IList<User_Business> List_User_Business_Obj { get; set; }
        public string Mobile_No { get; set; }
        public string Password { get; set; }
        #endregion

        #region User Role
        public User_Role User_Role_Obj { get; set; }
        public IList<User_Role> List_User_Role_Obj { get; set; }
        #endregion
    }
}