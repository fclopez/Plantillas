using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Transactions;
using CRUDmvc.Models;

namespace CRUDmvc.Controllers
{
    public class EntidadController : Controller
    {
        private ContextDB ctx;

        public EntidadController() {
            ctx = new ContextDB();
        }
        //
        // GET: /Entidad/

        public ActionResult Index()
        {
            var listaEntidades = ctx.Entidad1.ToList();
            return View(listaEntidades);
        }

        [HttpGet]
        public JsonResult DataResult()
        {
            var listaEntidades = ctx.Entidad1.ToList();
            return Json(listaEntidades,JsonRequestBehavior.AllowGet);
        }


        //
        // GET: /Entidad/Details/5

        public ActionResult Details(int id)
        {
            using (ctx)
            {
                var obj = ctx.Entidad1.Find(id);
                return View(obj);

            }
        }

        //
        // GET: /Entidad/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Entidad/Create

        [HttpPost]
        public ActionResult Create(Entidad1 collection)
        {
            try
            {
                // TODO: Add insert logic here

                using (ctx) {
                    using (TransactionScope scope = new TransactionScope())
                    {
                        ctx.Entidad1.Add(collection);
                        ctx.SaveChanges();
                        scope.Complete();
                    }
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Entidad/Edit/5
 
        public ActionResult Edit(int id)
        {
            using (ctx) {
                var obj = ctx.Entidad1.Find(id);
                return View(obj);
            
            }
        }

        //
        // POST: /Entidad/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, Entidad1 collection)
        {
            try
            {
                // TODO: Add update logic here

                using (ctx) {
                    using (var scope = new TransactionScope()) {
                        ctx.Entidad1.Find(id).NombreEntidad = collection.NombreEntidad;
                        ctx.Entidad1.Find(id).DetalleEntidad = collection.DetalleEntidad;
                        ctx.Entidad1.Find(id).Cantidad = collection.Cantidad;
                        ctx.SaveChanges();
                        scope.Complete();
                    }
                }
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Entidad/Delete/5
 
        public ActionResult Delete(int id)
        {
            using (ctx)
            {
                var obj = ctx.Entidad1.Find(id);
                return View(obj);

            }
        }

        //
        // POST: /Entidad/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, Entidad1 collection)
        {
            try
            {
                // TODO: Add delete logic here
                using(ctx){
                    using (TransactionScope scope = new TransactionScope()) {
                        var obj = ctx.Entidad1.Find(id);
                        ctx.Entidad1.Remove(obj);
                        ctx.SaveChanges();
                        scope.Complete();
                    }
                } 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
