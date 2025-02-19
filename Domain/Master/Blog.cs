using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    [Table("tbl_Blog")]
    public class Blog :Base
    {
        [Identifier("Blog_Id")]
        public int Blog_Id { get; set; }
        public string Blog_Code { get; set; }
        public string Blog_Name { get; set; }
        public string Blog_Image { get; set; }
    }
}
