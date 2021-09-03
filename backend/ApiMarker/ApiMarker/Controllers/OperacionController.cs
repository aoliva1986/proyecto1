using ApiMarker.Context;
using ApiMarker.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiMarker.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OperacionController : ControllerBase
    {
        private readonly AppDbContext context;
        public OperacionController(AppDbContext context)
        {
            this.context = context;
        }

        // GET: api/<OperacionController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<OperacionController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<OperacionController>
        [HttpPost]
        public ActionResult Post([FromBody] Operacion operacion)
        {
            try
            {
                context.Operacion.Add(operacion);
                context.SaveChanges();
                return Ok(operacion);
                //return CreatedAtRoute("GetUsuario", new { id = usuario.id }, usuario);

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // PUT api/<OperacionController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<OperacionController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
