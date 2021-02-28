// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require jquery_ujs
//= require_tree .

document.addEventListener("turbolinks:load", () => {
  var openmodal = document.querySelectorAll(".modal-open");
  for (var i = 0; i < openmodal.length; i++) {
    openmodal[i].addEventListener("click", function(event) {
      event.preventDefault();
      toggleModal();
    });
  }

  const overlay = document.querySelector(".modal-overlay");
  overlay.addEventListener("click", toggleModal);

  var closemodal = document.querySelectorAll(".modal-close");
  for (var i = 0; i < closemodal.length; i++) {
    closemodal[i].addEventListener("click", toggleModal);
  }

  document.onkeydown = function(evt) {
    evt = evt || window.event;
    var isEscape = false;
    if ("key" in evt) {
      isEscape = evt.key === "Escape" || evt.key === "Esc";
    } else {
      isEscape = evt.keyCode === 27;
    }
    if (isEscape && document.body.classList.contains("modal-active")) {
      toggleModal();
    }
  };

  function toggleModal() {
    const body = document.querySelector("body");
    const modal = document.querySelector(".modal");
    modal.classList.toggle("opacity-0");
    modal.classList.toggle("pointer-events-none");
    body.classList.toggle("modal-active");
  }

});
