using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web.Model
{
    public class HomeModel
    {
        #region Banner
        public Banner Banner_Obj { get; set; }
        public IList<Banner> List_Banner_Obj { get; set; }

        #endregion

        #region About
        public About About_Obj { get; set; }
        public IList<About> List_About_Obj { get; set; }
        #endregion
        #region Product
        public Product Product_Obj { get; set; }
        public IList<Product> List_Product_Obj { get; set; }
        #endregion
        #region Services
        public Services Services_Obj { get; set; }
        public IList<Services> List_Services_Obj { get; set; }
        #endregion
        #region Gallery
        public Gallery Gallery_Obj { get; set; }
        public IList<Gallery> List_Gallery_Obj { get; set; }
        #endregion

        #region Contact
        public Contact Contact_Obj { get; set; }
        public IList<Contact> List_Contact_Obj { get; set; }

        #endregion
        #region ProductDetails
        public ProductDetails ProductDetails_Obj { get; set; }
        public ProductDetails_Business ProductDetails__Business_Obj { get; set; }
        public IList<ProductDetails> List_ProductDetails_Obj { get; set; }
        public IList<ProductDetails_Business> List_ProductDetails_Business_Obj { get; set; }
        public HttpPostedFileBase ProductDetails_Image { get; set; }
        #endregion
        #region Blog
        public Blog Blog_Obj { get; set; }
        public IList<Blog> List_Blog_Obj { get; set; }
        #endregion
        #region BlogDetails
        public BlogDetails BlogDetails_Obj { get; set; }
        public IList<BlogDetails> List_BlogDetails_Obj { get; set; }
        public BlogDetails_Business BlogDetails_Business_Obj { get; set; }
        public IList<BlogDetails_Business> List_BlogDetails_Businesses_obj { get; set; }

        #endregion
        #region Status
        public Status Status_Obj { get; set; }
        public IList<Status> List_Status_Obj { get; set; }

        #endregion
        #region CustomberFeedback
        public CustomberFeedback CustomberFeedback_Obj { get; set; }
        public IList<CustomberFeedback> List_CustomberFeedback_Obj { get; set; }
        public CustomberFeedback_Business customberFeedback_Business_Obj { get; set; }
        public IList<CustomberFeedback_Business> List_customberFeedback_Businesses_obj { get; set; }
        #endregion
        #region SendToEmail
        public  Contact  SendToContact_Obj { get; set; }
        public IList<Contact> List_SendToContact_Obj { get; set; }
        #endregion
    }
}