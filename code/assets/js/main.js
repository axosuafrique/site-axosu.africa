/* AXOSU.AFRICA — comportements JS légers.
   Le site fonctionne sans JS : ce fichier n'ajoute que des bonus
   (animations, menu mobile, année du footer). */

document.documentElement.classList.add("js");

document.addEventListener("DOMContentLoaded", function () {
  /* Menu mobile */
  var toggle = document.querySelector(".nav-toggle");
  var nav = document.querySelector(".main-nav");
  if (toggle && nav) {
    toggle.addEventListener("click", function () {
      var isOpen = nav.classList.toggle("is-open");
      toggle.setAttribute("aria-expanded", isOpen ? "true" : "false");
    });
    nav.querySelectorAll("a").forEach(function (link) {
      link.addEventListener("click", function () {
        nav.classList.remove("is-open");
        toggle.setAttribute("aria-expanded", "false");
      });
    });
  }

  /* Hero : petite entrée au chargement */
  var hero = document.querySelector(".hero");
  if (hero) {
    requestAnimationFrame(function () {
      hero.classList.add("is-ready");
    });
  }

  /* Année dans le footer */
  var yearEl = document.querySelector("[data-year]");
  if (yearEl) {
    yearEl.textContent = new Date().getFullYear();
  }
});
