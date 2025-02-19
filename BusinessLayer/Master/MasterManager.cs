
using BusinessLayer.Interface;
using DataLayer;
using Domain;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class MasterManager : IMasterManager
    {

        #region index

        public int SaveBanner(Banner Object)
        {
            int Id = 0;

            try
            {
                Banner_Repository db = new Banner_Repository();
                Id = db.Add(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Id;
        }
        public IList<Banner> GetBanner(int? Banner_Id)
        {
            IList<Banner> ListObj = new List<Banner>();
            try
            {
                Banner_Repository db = new Banner_Repository();
                DataSet ds = db.List(Banner_Id);
                if (ds != null && ds.Tables != null && ds.Tables.Count > 0 && ds.Tables[0].Rows != null)
                {
                    ListObj = DataBaseUtil.DataTableToList<Banner>(ds.Tables[0]);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ListObj;
        }
        public int UpdateBanner(Banner Object)
        {
            int Id = 0;

            try
            {
                Banner_Repository db = new Banner_Repository();
                Id = db.Update(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Id;
        }
        public int DeleteBanner(int Banner_Id)
        {
            int Id = 0;

            try
            {
                Banner_Repository db = new Banner_Repository();
                Id = db.Delete(Banner_Id);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Id;
        }

        public int SaveAbout(About Object)
        {
            int Id = 0;

            try
            {
                About_Repository db = new About_Repository();
                Id = db.Add(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Id;
        }
        public IList<About> GetAbout(int? About_Id)
        {
            IList<About> ListObj = new List<About>();
            try
            {
                About_Repository db = new About_Repository();
                DataSet ds = db.List(About_Id);
                if (ds != null && ds.Tables != null && ds.Tables.Count > 0 && ds.Tables[0].Rows != null)
                {
                    ListObj = DataBaseUtil.DataTableToList<About>(ds.Tables[0]);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ListObj;
        }
        public int UpdateAbout(About Object)
        {
            int Id = 0;

            try
            {
                About_Repository db = new About_Repository();
                Id = db.Update(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Id;
        }
        public int DeleteAbout(int About_Id)
        {
            int Id = 0;

            try
            {
                About_Repository db = new About_Repository();
                Id = db.Delete(About_Id);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Id;
        }

        public int SaveProduct(Product Object)
        {
            int Id = 0;

            try
            {
                Product_Repository db = new Product_Repository();
                Id = db.Add(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Id;
        }
        public IList<Product> GetProduct(int? Product_Id)
        {
            IList<Product> ListObj = new List<Product>();
            try
            {
                Product_Repository db = new Product_Repository();
                DataSet ds = db.List(Product_Id);
                if (ds != null && ds.Tables != null && ds.Tables.Count > 0 && ds.Tables[0].Rows != null)
                {
                    ListObj = DataBaseUtil.DataTableToList<Product>(ds.Tables[0]);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ListObj;
        }
        public int UpdateProduct(Product Object)
        {
            int Id = 0;

            try
            {
                Product_Repository db = new Product_Repository();
                Id = db.Update(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Id;
        }
        public int DeleteProduct(int Product_Id)
        {
            int Id = 0;

            try
            {
                Product_Repository db = new Product_Repository();
                Id = db.Delete(Product_Id);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Id;
        }



        public int SaveProductDetails(ProductDetails Object)
        {
            int Id = 0;
            try
            {
                ProductDetails_Repository db = new ProductDetails_Repository();
                Id = db.Add(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Id;
        }
        public IList<ProductDetails_Business> GetProductDetails(int? ProductDetails_Id, int? Fk_ProductDetails_Id)
        {
            IList<ProductDetails_Business> ListObj = new List<ProductDetails_Business>();
            try
            {
                ProductDetails_Repository db = new ProductDetails_Repository();
                ListObj = db.ListProductDetails(ProductDetails_Id, Fk_ProductDetails_Id);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return ListObj;
        }

        public int UpdateProductDetails(ProductDetails Object)
        {
            int Id = 0;
            try
            {
                ProductDetails_Repository db = new ProductDetails_Repository();
                Id = db.Update(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Id;
        }
        public int DeleteProductDetails(int ProductDetails_Id)
        {
            int Id = 0;
            try
            {
                ProductDetails_Repository db = new ProductDetails_Repository();
                Id = db.Delete(ProductDetails_Id);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            return Id;
        }

        public int SaveAboutDetails(AboutDetails Object)
        {
            int Id = 0;
            try
            {
                AboutDetails_Repositry db = new AboutDetails_Repositry();
                Id = db.Add(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Id;
        }
        public IList<AboutDetails_Business> GetAboutDetails(int? AboutDetails_Id, int? About_Id, int? Banner_Id)
        {
            IList<AboutDetails_Business> ListObj = new List<AboutDetails_Business>();
            try
            {
                AboutDetails_Repositry db = new AboutDetails_Repositry();
                ListObj = db.ListAboutDetails(AboutDetails_Id, About_Id, Banner_Id);
            }
            catch (Exception)
            {
                throw;
            }
            return ListObj;
        }
        public int UpdateAboutDetails(AboutDetails Object)
        {
            int Id = 0;
            try
            {
                AboutDetails_Repositry db = new AboutDetails_Repositry();
                Id = db.Update(Object);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            return Id;
        }
        public int DeleteAboutDetails(int AboutDetails_Id)
        {
            int Id = 0;
            try
            {
                AboutDetails_Repositry db = new AboutDetails_Repositry();
                Id = db.Delete(AboutDetails_Id);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            return Id;
        }

        public int SaveStatus(Status Object)
        {

            int Id = 0;
            try
            {
                Status_Repository db = new Status_Repository();
                Id = db.Add(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Id;
        }
        public IList<Status> GetStatus(int? Status_Id)
        {
            IList<Status> ListObj = new List<Status>();
            try
            {
                Status_Repository db = new Status_Repository();
                DataSet ds = db.List(Status_Id);
                if (ds != null && ds.Tables != null && ds.Tables.Count > 0 && ds.Tables[0].Rows != null)
                {
                    ListObj = DataBaseUtil.DataTableToList<Status>(ds.Tables[0]);
                }
            }
            catch (Exception)
            {
                throw;
            }
            return ListObj;
        }
        public int UpdateStatus(Status Object)
        {
            int id = 0;
            try
            {
                Status_Repository db = new Status_Repository();
                id = db.Update(Object);
            }
            catch (Exception)
            {
                throw;
            }
            return id;
        }
        public int DeleteStatus(int Status_Id)
        {
            int id = 0;
            try
            {
                Status_Repository db = new Status_Repository();
                id = db.Delete(Status_Id);
            }
            catch (Exception)
            {
                throw;
            }
            return id;
        }

        public int SaveContact(Contact Object)
        {
            int Id = 0;
            try
            {
                Contact_Repository db = new Contact_Repository();
                Id = db.Add(Object);
            }
            catch (Exception)
            {
                throw;
            }
            return Id;
        }
        public IList<Contact> GetContact(int? Contact_Id)
        {
            IList<Contact> ListObj = new List<Contact>();
            {
                Contact_Repository db = new Contact_Repository();
                DataSet ds = db.List(Contact_Id);
                if (ds != null && ds.Tables != null && ds.Tables.Count > 0 && ds.Tables[0].Rows != null)
                {
                    ListObj = DataBaseUtil.DataTableToList<Contact>(ds.Tables[0]);
                }
            }
            return ListObj;
        }
        public int UpdateContact(Contact Object)
        {
            int id = 0;
            try
            {
                Contact_Repository db = new Contact_Repository();
                id = db.Update(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return id;
        }
        public int DeleteContact(int Contact_Id)
        {
            int id = 0;
            try
            {
                Contact_Repository db = new Contact_Repository();
                id = db.Delete(Contact_Id);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return id;
        }
        public int SaveCustomberFeedback(CustomberFeedback Object)
        {
            int id = 0;
            try
            {
                CustomberFeedback_Repository db = new CustomberFeedback_Repository();
                id = db.Add(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return id;
        }
        public IList<CustomberFeedback_Business> GetCustomberFeedback(int? CustomberFeedback_Id, int? Status_Id)
        {
            IList<CustomberFeedback_Business> ListObj = new List<CustomberFeedback_Business>();
            try
            {
                CustomberFeedback_Repository db = new CustomberFeedback_Repository();
                ListObj = db.ListCustomberFeedback(CustomberFeedback_Id, Status_Id);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ListObj;
        }

        public int UpdateCustomberFeedback(CustomberFeedback Object)
        {
            int Id = 0;
            try
            {
                CustomberFeedback_Repository db = new CustomberFeedback_Repository();
                Id = db.Update(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Id;
        }
        public int DeleteCustomberFeedback(int CustomberFeedback_Id)
        {
            int id = 0;
            try
            {
                CustomberFeedback_Repository db = new CustomberFeedback_Repository();
                id = db.Delete(CustomberFeedback_Id);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return id;
        }
        public int SaveBlog(Blog Object)
        {
            int Id = 0;
            try
            {
                Blog_Repository db = new Blog_Repository();
                Id = db.Add(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Id;
        }
        public IList<Blog> GetBlog(int? Blog_Id)
        {
            IList<Blog> ListObj = new List<Blog>();
            try
            {
                Blog_Repository db = new Blog_Repository();
                DataSet ds = db.List(Blog_Id);
                if (ds != null && ds.Tables != null && ds.Tables.Count > 0 && ds.Tables[0].Rows != null)
                {
                    ListObj = DataBaseUtil.DataTableToList<Blog>(ds.Tables[0]);
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return ListObj;
        }
        public int UpdateBlog(Blog Object)
        {
            int Id = 0;
            try
            {
                Blog_Repository db = new Blog_Repository();
                Id = db.Update(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Id;
        }
        public int DeleteBlog(int Blog_Id)
        {
            int Id = 0;
            try
            {
                Blog_Repository db = new Blog_Repository();
                Id = db.Delete(Blog_Id);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Id;
        }
        public int SaveBlogDetails(BlogDetails Object)
        {
            int id = 0;
            try
            {
                BlogDetails_Repository db = new BlogDetails_Repository();
                id = db.Add(Object);
            }
            catch (Exception)
            {
                throw;
            }
            return id;
        }
        public IList<BlogDetails_Business> GetBlogDetails(int? BlogDetails_Id, int? Blog_Id)
        {
            IList<BlogDetails_Business> ListObj = new List<BlogDetails_Business>();
            try
            {
                BlogDetails_Repository db = new BlogDetails_Repository();
                ListObj = db.ListBlogDetails(BlogDetails_Id, Blog_Id);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ListObj;
        }
        public int UpdateBlogDetails(BlogDetails Object)
        {
            int id = 0;
            try
            {
                BlogDetails_Repository db = new BlogDetails_Repository();
                id = db.Update(Object);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return id;
        }
        public int DeleteBlogDetails(int BlogDetails_Id)
        {
            int id = 0;
            try
            {
                BlogDetails_Repository db = new BlogDetails_Repository();
                id = db.Delete(BlogDetails_Id);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return id;
        }
        #endregion
        public int SaveGallery(Gallery Object)
        {
            int Id = 0;
            try
            {
                Gallery_Repository db = new Gallery_Repository();
                Id = db.Add(Object);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            return Id;
        }
        public IList<Gallery> GetGallery(int? Gallery_Id)
        {
            IList<Gallery> ListObj = new List<Gallery>();
            try
            {
                Gallery_Repository db = new Gallery_Repository();
                DataSet ds = db.List(Gallery_Id);
                if (ds != null && ds.Tables != null && ds.Tables.Count > 0 && ds.Tables[0].Rows != null)
                {
                    ListObj = DataBaseUtil.DataTableToList<Gallery>(ds.Tables[0]);
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return ListObj;
        }
        public int UpdateGallery(Gallery Object)
        {
            int id = 0;
            try
            {
                Gallery_Repository db = new Gallery_Repository();
                id = db.Update(Object);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            return id;
        }
        public int DeleteGallery(int Gallery_Id)
        {
            int id = 0;
            try
            {
                Gallery_Repository db = new Gallery_Repository();
                id = db.Delete(Gallery_Id);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            return id;
        }
        public int SaveServices(Services Object)
        {
            int id = 0;
            try
            {
                Services_Repository db = new Services_Repository();
                id = db.Add(Object);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            return id;
        }
        public IList<Services> GetServices(int? Services_Id)
        {
            IList<Services> ListObj = new List<Services>();
            try
            {

                Services_Repository db = new Services_Repository();
                DataSet ds = db.List(Services_Id);
                if (ds != null && ds.Tables != null && ds.Tables.Count > 0 && ds.Tables[0].Rows != null)
                {
                    ListObj = DataBaseUtil.DataTableToList<Services>(ds.Tables[0]);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ListObj;
        }
        public int UpdateServices(Services Object)
        {
            int id = 0;
            try
            {
                Services_Repository db = new Services_Repository();
                id = db.Update(Object);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            return id;
        }
        public int DeleteServices(int Services_Id)
        {
            int id = 0;
            try
            {
                Services_Repository db = new Services_Repository();
                id = db.Delete(Services_Id);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            return id;
        }
    }
}
