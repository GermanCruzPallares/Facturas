using Api.Models;
using Api.Services;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class FacturaController<T> : ControllerBase where T : class
    {
        private readonly IFacturasService<T> _facturasService;

        public FacturaController(IFacturasService<T> facturasService)
        {
            _facturasService = facturasService;
        }

        [HttpGet]
        public ActionResult<List<T>> GetFacturas()
        {
            var facturas = _facturasService.GetAllFactura();
            if(!facturas.Any()){
                return NotFound("No se encontro ninguna factura");
            }
            return Ok(facturas);
        }
        
        [HttpGet("{id}")]
        public async Task<ActionResult> GetFacturaById(int id){
            
            var facturas = await _facturasService.GetFactura(id);
             if(facturas==null){
                return NotFound("No se encontro la factura");
            }
            return Ok(facturas);
        }

        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteFacturaById(int id){

            var facturas = await _facturasService.DeleteFactura(id);
             if(facturas==null){
                return NotFound("No se encontro la factura");
            }
            return Ok(facturas);

        }

        [HttpPost] 
        public async Task<ActionResult> CreateNewFactura([FromBody] T factura){

            var facturas = await _facturasService.CreateFactura(factura);
            return Ok(facturas);
        }

        [HttpPut]
        public async Task<ActionResult> EditFactura(T factura){

            var facturas = await _facturasService.EditFactura(factura);
            return Ok(facturas);
        }
    }   


}