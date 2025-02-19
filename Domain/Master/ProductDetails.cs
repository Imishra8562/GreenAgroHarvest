using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    [Table("tbl_ProductDetails")]
    public class ProductDetails :Base
    {
        [Identifier("ProductDetails_Id")]
        public int ProductDetails_Id { get; set; }
        public String ProductDetails_Code { get; set; }
        public int Fk_ProductDetails_Id { get; set; }
        public String ProductDetails_Name { get; set; }
        public String ProductDetails_Details { get; set; }
        public String ProductDetails_Image { get; set; }
    }
}
