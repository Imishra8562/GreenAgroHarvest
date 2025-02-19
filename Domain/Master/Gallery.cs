using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    [Table("tbl_Gallery")]                                                   
    public class Gallery : Base
    {
        [Identifier("Gallery_Id")]
         public int    Gallery_Id { get; set; }
         public string Gallery_Code { get; set; }
         public string Gallery_Name { get; set; }
         public string Gallery_Heading { get; set; }
         public string Gallery_Image { get; set; }
    }
}


