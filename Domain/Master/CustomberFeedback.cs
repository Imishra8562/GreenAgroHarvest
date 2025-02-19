using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    [Table("tbl_CustomberFeedback")]
   public class CustomberFeedback:Base
    {
        [Identifier("CustomberFeedback_Id")]
        public int CustomberFeedback_Id { get; set; }
        public String CustomberFeedback_Code { get; set; }
        public String CustomberFeedback_Name { get; set; }
        public String CustomberFeedback_Number { get; set; }
        public String CustomberFeedback_Email{ get; set; }
        public string CustomberFeedback_Comment { get; set; }
        public int  Fk_Status_Id { get; set; }
    }
}
