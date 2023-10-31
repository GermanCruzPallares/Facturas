using Microsoft.EntityFrameworkCore;

namespace Api.Models
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options) 
        : base(options) 
        {

         }
         DbSet<Factura> Facturas {get;set;} = null!;
    }
}