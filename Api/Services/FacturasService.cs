using Api.Models;
using Microsoft.EntityFrameworkCore;

namespace Api.Services
{
    public class FacturasService<T> : IFacturasService<T> where T : class
    {
        private readonly DataContext _context;

        public FacturasService(DataContext context)
        {
            _context = context;
        }
        public async Task<T> CreateFactura(T factura)
        {
            await _context.Set<T>().AddAsync(factura);
            await _context.SaveChangesAsync();
            return factura;
        }

        public async Task<T> DeleteFactura(int Id)
        {
         var factura = await _context.Set<T>().FindAsync(Id);
         if(factura==null){
            return null;
         }
    
         _context.Set<T>().Remove(factura);
         await _context.SaveChangesAsync();
         return factura;
        }

        public async Task<T> EditFactura(T factura)
        {
            _context.Set<T>().Update(factura);
            await _context.SaveChangesAsync();
            return factura;
        }

        public List<T> GetAllFactura()
        {
          List<T> factura =  _context.Set<T>().ToList();
          return factura;
        }

        public async Task<T> GetFactura(int Id)
        {
         var factura = await _context.Set<T>().FindAsync(Id);
         return factura ?? null;
        }
    }





}