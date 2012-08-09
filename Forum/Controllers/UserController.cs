using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Forum.Models;

namespace Forum.Controllers
{
    public class UserController : Controller
    {
        //
        // GET: /User/

        forumEntities _entity = new forumEntities();

        //kullanıcı tipleri
        public enum En_UserType
        { 
            Admin=0,
            SiteUser=1
        }

        //Kullanıcı aktif mi
        public enum En_IsActive
        { 
            NotActive=0,
            Active=1
        }

        //Email onayı alınmış mı
        public enum En_IsApproved
        { 
            NotApproved=0,
            Approved=1
        }

        public ActionResult Index()
        {
            var liste = from u in _entity.UserSet select u;
            return View(liste);
        }

        //
        // GET: /User/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /User/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /User/Create

        [HttpPost]
        public ActionResult Create(FormCollection frm)
        {
            try
            {
                UserSet u = new UserSet();
                //form dan gelen veriler
                u.UserName=frm["UserName"];
                u.UserType = (Byte)En_UserType.SiteUser;
                u.Password=frm["Password"];
                u.Email=frm["Email"];
                u.RegistrationDate = DateTime.Now;
                u.IsApproved = (Byte)En_IsApproved.NotApproved;
                u.IsActive = (Byte)En_IsActive.Active;


                //kaydet
                _entity.UserSet.AddObject(u);
                _entity.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /User/Edit/5
 
        public ActionResult Edit(int id)
        {
            var duzenle= (from k in _entity.UserSet select k).Where(i=>i.UserId==id).First() ;
            return View(duzenle);
        }

        //
        // POST: /User/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /User/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /User/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
