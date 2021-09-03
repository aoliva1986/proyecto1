    using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiMarker.Models
{
    public class Operacion
    {
        public int id { get; set; }        
        public int tipo { get; set; }
        public DateTime fechayhora { get; set; }
        public int usuarioid { get; set; }

    }
}
