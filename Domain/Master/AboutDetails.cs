 using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    [Table("tbl_AboutDetails")]
    public class AboutDetails  :Base
    {
        [Identifier("AboutDetails_Id")]
        public int    AboutDetails_Id     { get; set; }
        public string AboutDetails_Code   { get; set; }
        public int    Fk_About_Id        { get; set; }
        public int    Fk_Banner_Id       { get; set; }
        public string About_Details      { get; set; }
         
    }
}
