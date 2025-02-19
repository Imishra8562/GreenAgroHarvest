using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    [Table("tbl_BlogDetails")]
    public class BlogDetails :Base
    {
        [Identifier("BlogDetails_Id")]
        public int BlogDetails_Id { get; set; }
        public string BlogDetails_Code { get; set; }
        public int Fk_Blog_Id { get; set; }
        public string BlogDetails_Image { get; set; }
        public string BlogDetails_Description { get; set; }
        public string BlogDetails_ImageA { get; set; }
        public string BlogDetails_ImageB { get; set; }
        public string BlogDetails_Heading { get; set; }
        public string BlogDetails_Description1 { get; set; }


    }
}
