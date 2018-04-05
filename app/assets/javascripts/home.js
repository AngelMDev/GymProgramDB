$(document).ready(function() {
  var active;
  $(".powerlifting").click(function() {
    $(this).removeClass("shrink");
    $(".section")
      .not(this)
      .each(function() {
        $(this).addClass("shrink");
      });
     
  });
  $(".bodybuilding").click(function() {
    $(this).removeClass("shrink");
    $(".section")
      .not(this)
      .each(function() {
        $(this).addClass("shrink");
      });
  });
  $(".strongman").click(function() {
    $(this).removeClass("shrink");
    $(".section")
      .not(this)
      .each(function() {
        $(this).addClass("shrink");
      });
  });
  $(".olympic").click(function() {
    $(this).removeClass("shrink");
    $(".section")
      .not(this)
      .each(function() {
        $(this).addClass("shrink");
      });
  });
});



