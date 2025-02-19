using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    [Table("tbl_Banner")]
    public class Banner : Base
    {
        [Identifier("Banner_Id")]
        public int Banner_Id { get; set; }
        public string Banner_Code { get; set; }
        public string Banner_heading { get; set; }
        public string Banner_description { get; set; }
        public string Banner_image { get; set; }


    }

}
