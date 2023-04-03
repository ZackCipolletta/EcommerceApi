using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using EcommerseApi.Models;

namespace EcommerseApi.Models
{
  public class EcommerseApiContext : IdentityDbContext<ApplicationUser>
  {
    public DbSet<Product> Products { get; set; }
    public DbSet<Review> Reviews { get; set; }

    public EcommerseApiContext(DbContextOptions<EcommerseApiContext> options) : base(options)
    {
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
      base.OnModelCreating(modelBuilder);
      // Configure your model here
    }
  }
}