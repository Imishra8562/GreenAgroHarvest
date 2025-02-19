using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{        
    [Table("tbl_Contact")]
    public class Contact:Base
    {
        [Identifier("Contact_Id")]
        public int Contact_Id { get; set; }
        public string  Contact_Code { get; set; }
        public string  Contact_Name { get; set; }
        public string  Contact_Number { get; set; }
        public string  Contact_Email { get; set; }
        public string  Contact_Subject { get; set; }
        public string  Contact_Comment { get; set; }

        
    }
}
