using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    [Table("tbl_Product")]
    public class Product : Base
    {
        [Identifier("Product_Id")]
        public int Product_Id { get; set; }
        public string Product_Code { get; set; }
        public string Product_Name { get; set; }
        public string Product_Image { get; set; }


    }
}
