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



// positioning.html
    $('#changeToRelative').toggle(function() {
      $('#relative .box').css('position', 'relative');
      $(this).html('Change back to \'static\' position');
        }, function() {
      $('#relative .box').css('position', 'static');
      $(this).html('Change to \'relative\' position');
    });

    $('#changeToAbsolute').toggle(function() {
      $('#absolute .box4').css('position', 'absolute');
      $('#absolute .box4').css('top', '100px');
      $('#absolute .box4').css('left', '300px');
      $('#absolute').append('<p>Scroll up to the top of the window to see box 4.</p>');
      $(this).html('Change back to \'static\' position');
        }, function() {
      $('#absolute p').hide();
      $('#absolute .box4').css('top', '0');
      $('#absolute .box4').css('left', '0');
      $('#absolute .box4').css('position', 'static');
      $(this).html('Change to \'absolute\' position');
    });

    $('#changeToFixed').toggle(function() {
      $('#fixed .box4').css('left', '40%');
      $('#fixed .box4').css('bottom', '5%');
      $('#fixed .box4').css('position', 'fixed');
      $('#fixed').append('<p>Scroll the window up and down and see how box 4 doesn\'t move.</p>');
      $(this).html('Change back to \'static\' position');
        }, function() {
      $('#fixed p').hide();
      $('#fixed .box4').css('left', '0');
      $('#fixed .box4').css('bottom', '');
      $('#fixed .box4').css('position', 'static');
      $(this).html('Change to \'fixed\' position');
    });

    $('#changeToInherit').toggle(function() {
      $('#inherit').css('position', 'fixed');
      $('#inherit').css('top', '200px');
      $('#inherit .box').css('position', 'inherit');
      $('#inheritExplanation').append ('<p><strong>Once the containing element has a fixed position, the inheriting box elements will also be fixed in the same position and overlap each other.</strong></p>');
      $(this).html('Change back to \'static\' position');
        }, function() {
      $('#inherit').css('position', 'static');
      $('#inherit').css('left', '0');
      $('#inherit .box').css('position', 'static');
      $('#inheritExplanation p').hide();
      $(this).html('Change to \'inherit\' position');
    });

    $('#floatLeft').toggle(function() {
      $('#float2 div').css('float', 'left');
      $(this).html('Remove float');
        }, function() {
      $('#float2 div').css('float', 'none');
      $(this).html('Float items left');
    });

    $('#floatLeft3').toggle(function() {
      $('#float3 div').css('float', 'left');
      $(this).html('Oh no! Remove float!');
        }, function() {
      $('#float3 div').css('float', 'none');
      $(this).html('Float items left');
    });

    $('#floatLeft4').toggle(function() {
      $('#float4 div').css('float', 'left');
      $(this).html('Back to normal');
        }, function() {
      $('#float4 div').css('float', 'none');
      $(this).html('Float items left and clear');
    });



}); // end doc ready
