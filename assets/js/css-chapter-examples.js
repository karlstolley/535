$(function() {

  // declarations.html
  $('#declExampleBtn1').toggle(function() {
    $('#declExample1').addClass('declExample1');
    $(this).html('Remove Style');
      }, function() {
    $('#declExample1').removeClass('declExample1');
    $(this).html('Apply Style');
  });

  $('#declExampleBtn2').toggle(function() {
    $("#declExample2 h1").addClass("declExample2");
    $("#declExample2 p").addClass("declExample2");
    $(this).html('Remove Style');
      }, function() {
    $("#declExample2 h1").removeClass("declExample2");
    $("#declExample2 p").removeClass("declExample2");
    $(this).html('Apply Style');
  });




}); // end doc ready
