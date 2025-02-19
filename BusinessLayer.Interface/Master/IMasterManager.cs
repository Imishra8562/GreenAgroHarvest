
using Domain;
using System;
using System.Collections.Generic;

using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.Interface
{
    public interface IMasterManager
    {

        #region Banner

        int SaveBanner(Banner Object);
        IList<Banner> GetBanner(int? Banner_Id);
        int UpdateBanner(Banner Object);
        int DeleteBanner(int Banner_Id);

        #endregion

        #region About

        int SaveAbout(About Object);
        IList<About> GetAbout(int? About_Id);
        int UpdateAbout(About Object);
        int DeleteAbout(int About_Id);

        #endregion

        #region Product

        int SaveProduct(Product Object);
        IList<Product> GetProduct(int? Product_Id);
        int UpdateProduct(Product Object);
        int DeleteProduct(int Product_Id);

        #endregion

        #region ProductDetails 
        int SaveProductDetails(ProductDetails Object);
        IList<ProductDetails_Business> GetProductDetails(int? ProductDetails_Id, int? Fk_ProductDetails_Id);
        int UpdateProductDetails(ProductDetails Object);
        int DeleteProductDetails(int ProductDetails_Id);
        #endregion

        #region AboutDetails
        int SaveAboutDetails(AboutDetails Object);
        IList<AboutDetails_Business> GetAboutDetails(int? AboutDetails_Id, int? About_Id, int? Banner_Id);
        int UpdateAboutDetails(AboutDetails Object);
        int DeleteAboutDetails(int AboutDetails_Id);
        #endregion
        #region Status
        int SaveStatus(Status Object);
        IList<Status> GetStatus(int? Status_Id);
        int UpdateStatus(Status Object);
        int DeleteStatus(int Status_Id);

        #endregion
        #region Contact
        int SaveContact(Contact Object);
        IList<Contact> GetContact(int? Contact_Id);
        int UpdateContact(Contact Object);
        int DeleteContact(int Contact_Id);
        #endregion
        #region CustomberFeedback
        int SaveCustomberFeedback(CustomberFeedback Object);

        IList<CustomberFeedback_Business> GetCustomberFeedback(int? CustomberFeedback_Id, int? Status_Id);
        int UpdateCustomberFeedback(CustomberFeedback Object);
        int DeleteCustomberFeedback(int CustomberFeedback_Id);
        #endregion
        #region Blog
        int SaveBlog(Blog Object);
        IList<Blog> GetBlog(int? Blog_Id);
        int UpdateBlog(Blog Object);
        int DeleteBlog(int Blog_Id);

        #endregion
        #region BlogDetails
        int SaveBlogDetails(BlogDetails Object);
        IList<BlogDetails_Business> GetBlogDetails(int? BlogDetails_Id, int? Blog_Id);
        int UpdateBlogDetails(BlogDetails Object);
        int DeleteBlogDetails(int BlogDetails_Id);
        #endregion

        #region Gallery
        int SaveGallery(Gallery Object);
        IList<Gallery> GetGallery(int? Gallery_Id);
        int UpdateGallery(Gallery Object);
        int DeleteGallery(int Gallery_Id);
        #endregion

        #region Services
        int SaveServices(Services Object);
        IList<Services> GetServices(int? Services_Id);
        int UpdateServices(Services Object);
        int DeleteServices(int Services_Id);
        #endregion
    }

}
