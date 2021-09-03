using ApiMarker.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
//using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace ApiMarker.Context
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {

        }
        public DbSet<Usuarios> usuario { get; set; }
        public DbSet<Operacion> Operacion {get;set;}

        public DbSet<Tipo> tipoOperacion { get; set; }

        /*protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            
        }*/
    }

}
