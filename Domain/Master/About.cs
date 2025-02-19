using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    [Table("tbl_About")]
    public class About : Base
    {
        //public string About_image;

        [Identifier("About_Id")]
        public int    About_Id          { get; set; }
        public string About_Code        { get; set; }
        public string Name              { get; set; }
        public string Image             { get; set; }
        public string About_Us          { get; set; }
        
    }
}
