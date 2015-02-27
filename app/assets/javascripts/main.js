// Coments disqus
// var disqus_shortname = 'luizpicolo';
// (function() {
//     var dsq = document.createElement('script');
//     dsq.type = 'text/javascript';
//     dsq.async = true;
//     dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
//     (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
// })();


// main
$(document).ready(function(){
  // active
  (function(){
    var location = window.location.pathname;
    location = location.split('/');

    $('a[href="/'+ location[1] +'"]').addClass('active');
  })();
});
