using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    [Table("tbl_Services")]
    public class Services:Base
    {
        [Identifier("Services")]
        public int    Services_Id{ get; set;}
        public string Services_Code { get; set; }
        public string Services_Heading { get; set; }
        public string Services_Description { get; set; }
        public string Services_Image { get; set; }
    }
}
