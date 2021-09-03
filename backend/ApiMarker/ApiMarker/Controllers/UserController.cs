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
    public class UserController : ControllerBase
    {
        private readonly AppDbContext context;

        public UserController(AppDbContext context)
        {
            this.context = context;
        }

        // GET api/<UserController>
        [HttpGet]
        public ActionResult Get()
        {
            return Ok(context.usuario.ToList());
        }
        // POST api/<UserController>
        [HttpPost, Route("Crear")]
        public ActionResult Crear([FromBody] Usuarios usuario)
        {
            try
            {
                context.usuario.Add(usuario);
                context.SaveChanges();
                return Ok(usuario.id);
                //return CreatedAtRoute("GetUsuario", new { id = usuario.id }, usuario);

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [HttpPost, Route("Login")]
        public ActionResult Login([FromBody] Usuarios usuario)
        {
            List<Usuarios> lu = new List<Usuarios>(context.usuario.ToList());
            foreach (var us in lu)
            {                
                if (usuario.Usuario == us.Usuario && usuario.Pass == us.Pass)
                {
                    return CreatedAtRoute("GetUsuario", new { usuario = usuario.Nombre }, usuario);
                }
                else
                {
                    return Ok(us.ToString());

                }
            }
            return Ok();
        }
    }
}
