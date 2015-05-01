//how to increase the votes individually by review

var like = 0;
//jQuery("#votes").data('vote',0);
//jQuery('#upvote').click(function(){
  //  $('#votes').html(function(){
    //    var $this = $(this), count = $this.data('vote') + 1
       // $this.data('vote', vote);
        //return vote
   // }
//}
var main = function(){
  $(".refrigeratorname").mouseover(function() {
      $(this).children(".review").show();
  }).mouseout(function() {
      $(this).children(".review").hide();
  });
}

$(document).ready(main);
