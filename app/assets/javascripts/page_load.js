//= require bootstrap/affix

var ready = function() {
  //$('.navbar-default').stickUp();
  new WOW().init();
  $('.navbar-default').affix({
    // TODO: Fixed the initial binding of the positioning
    offset: {
      top: 50,
      // bottom: function () {
      //   return (this.bottom = $('.footer').outerHeight(true))
      // }
    }
  });
};
$(document).ready(ready);
$(document).on('page:load', ready);