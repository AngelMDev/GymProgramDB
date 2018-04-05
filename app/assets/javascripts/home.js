$(document).ready(function() {
  var active;
  $(".powerlifting").click(function() {
    if($(this).hasClass("shrink")){
      $(this).removeClass("shrink");
      $(".section")
      .not(this)
      .each(function() {
        $(this).addClass("shrink");
      });
    }else{  
      $(".section")
      .not(this)
      .each(function() {
        $(this).removeClass("shrink");
      });   
    }  
  });
  $(".bodybuilding").click(function() {
    if($(this).hasClass("shrink")){
      $(this).removeClass("shrink");
      $(".section")
      .not(this)
      .each(function() {
        $(this).addClass("shrink");
      });
    }else{
      $(".section")
      .not(this)
      .each(function() {
        $(this).removeClass("shrink");
      });  
    }  
  });
  $(".strongman").click(function() {
    if($(this).hasClass("shrink")){
      $(this).removeClass("shrink");
      $(".section")
      .not(this)
      .each(function() {
        $(this).addClass("shrink");
      });
    }else{ 
      $(".section")
      .not(this)
      .each(function() {
        $(this).removeClass("shrink");
      });    
    }  
  });
  $(".olympic").click(function() {
    if($(this).hasClass("shrink")){
      $(this).removeClass("shrink");
      $(".section")
      .not(this)
      .each(function() {
        $(this).addClass("shrink");
      });
    }else{
      $(".section")
      .not(this)
      .each(function() {
        $(this).removeClass("shrink");
      });      
    }     
  });
});



function growDiv(id) {
  var otherDiv = ['ol','pl','sm','bb'];
  var growDiv = document.getElementById(id);
  otherDiv.splice(otherDiv.indexOf(id),1);
  otherDiv.forEach(function(element){
      elementDiv=document.getElementById(element);
      elementDiv.style.width = 0;
  });
  if (growDiv.clientWidth) {
      growDiv.style.width = 0;
  } else {
      growDiv.style.width = "500px";
  }
}

