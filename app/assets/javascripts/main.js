// main
$(document).ready(function(){
  // active
  (function(){
    var location = window.location.pathname;
    location = location.split('/');

    $('a[href="/'+ location[1] +'"]').addClass('active');
  })();
});
