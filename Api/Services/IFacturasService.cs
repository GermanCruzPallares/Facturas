using Api.Models;

namespace Api.Services
{
    public interface IFacturasService<T> where T : class
    {
        List<T> GetAllFactura();
        Task<T> GetFactura(int Id);
        Task<T> CreateFactura(T clase);
        Task<T> DeleteFactura(int Id);
        Task<T> EditFactura(T clase);
    }
}