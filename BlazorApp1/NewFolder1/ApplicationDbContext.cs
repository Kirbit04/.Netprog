using System.Security.Cryptography.X509Certificates;
using Microsoft.EntityFrameworkCore;

namespace BlazorApp1.NewFolder1
{
  
        public class ApplicationDbContext : DbContext
        {
            public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
                : base(options) { } // ✅ Ensure the constructor uses DbContextOptions

            public DbSet<User> Users { get; set; }        //The DbSet properties (Users, Properties) represent database tables
        public DbSet<Property> properties { get; set; }

        public class User
        {
            public int UserId { get; set; }
            public int Name { get; set; }
          //  public string email { get; set; }
        }
        public class Property
        {
            public int PropertyId { get; set; }
            public string Title { get; set; }
            public decimal price { get; set; }
        }
    }

}
