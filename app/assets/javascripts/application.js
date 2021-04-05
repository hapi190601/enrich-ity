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
//= require jquery
//= require popper
//= require bootstrap-sprockets
//= require jquery_ujs
//= require activestorage
//= require turbolinks
//= require jquery.jpostal
//= require_tree .


$(function() {
  $(document).on('turbolinks:load', () => {
    $('#user_postal_code').jpostal({
      postcode : [
        '#user_postal_code'
      ],
      address: {
        "#user_prefecture_code": "%3",
        "#user_municipality": "%4"
      }
    });
  });
});


$(function(){
  $("#up-scroll").hide();
  $(window).scroll(function(){
    $('#pos').text($(this).scrollTop());
    if ($(this).scrollTop() > 60){
      $("#up-scroll").fadeIn();
    }else{
      $('#up-scroll').fadeOut();
    }
  });

  $(function() {
    $('.slide-images').slick({
      dots: true,
      autoplay: true,
      autoplaySpeed: 2300,
      pauseOnFocus: false,
      pauseOnHover: false,
      pauseOnDotsHover: false
    });
});

  $('#up-scroll a').click(function() {
    $('html, body').animate({
        scrollTop:0
    }, 800);
    return false;
  });

  ityped.init(document.querySelector("#ityped"), {
    strings: [
      "Welcome to Enrich-ity !",
      "Let's make friends !",
    ],
    typeSpeed: 130,
    backSpeed: 10,
    showCursor: true,
    cursorChar: "|"
  })

  var option = {
    duration: 6000,
    origin: 'left',
    distance: '100px',
    delay: 200,
  };

  var delaieroption = {
    duration: 6000,
    origin: 'left',
    distance: '100px',
    delay: 1000,
  };

  var delaiestoption = {
    duration: 6000,
    origin: 'left',
    distance: '100px',
    delay: 1800,
  };

  ScrollReveal().reveal('.left-message', option);
  ScrollReveal().reveal('.right-message', delaieroption);
  ScrollReveal().reveal('.animate',delaiestoption);
});