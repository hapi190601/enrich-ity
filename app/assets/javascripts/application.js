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


/*global $*/
$(document).on('turbolinks:load', function() {
  $('#up-scroll').hide();
  $(window).scroll(function(){
    $('#pos').text($(this).scrollTop());
    if ($(this).scrollTop() > 60){
      $('#up-scroll').fadeIn();
    }else{
      $('#up-scroll').fadeOut();
    }
  });

  $('#user_postal_code').jpostal({
    postcode : [
      '#user_postal_code'
    ],
    address: {
      "#user_prefecture_code": "%3",
      "#user_municipality": "%4",
    }
  });

  $('.slide-images').slick({
    dots: true,
    autoplay: true,
    autoplaySpeed: 2300,
    pauseOnFocus: false,
    pauseOnHover: false,
    pauseOnDotsHover: false
  });

  $('#up-scroll a').click(function() {
    $('html, body').animate({
        scrollTop:0
    }, 800);
    return false;
  });

  var lateroption = {
    duration: 3000,
    origin: 'right',
    distance: '100px',
    delay: 100,
  };

  var option = {
    duration: 6000,
    origin: 'left',
    distance: '100px',
    delay: 300,
  };

  var delaieroption = {
    duration: 6000,
    origin: 'right',
    distance: '100px',
    delay: 1000,
  };

  var delaiestoption = {
    duration: 6000,
    origin: 'left',
    distance: '100px',
    delay: 1600,
  };

  var lastoption = {
    duration: 6000,
    origin: 'left',
    distance: '200px',
    delay: 1800,
  };

  /*global ScrollReveal*/
  ScrollReveal().reveal('.left-message', option);
  ScrollReveal().reveal('.right-message', delaieroption);
  ScrollReveal().reveal('.animate',delaiestoption);
  ScrollReveal().reveal('.link-box',lastoption);
  ScrollReveal().reveal('.three-btn',option);
  ScrollReveal().reveal('.search-form',lateroption);

  // プレビュー機能
  function readURL(input) {
    if(input.files && input.files[0]){
      var reader = new FileReader();
      reader.onload = function (e) {
        $('#preview').attr('src', e.target.result);
      };
      reader.readAsDataURL(input.files[0]);
    }
  }
  // 投稿画像プレビュー
  $("#post_image").change(function(){
    console.log("hoge");
    readURL(this);
  });

  // 会員画像プレビュー
  $("#user_image").change(function(){
    console.log("hoge");
    readURL(this);
  });


  $(document).ready(function() {
  $(window).scroll(function() {
    if ($(this).scrollTop() > 50) {
      $('header').css('opacity', 0.7);
    } else {
      $('header').css('opacity', 1);
    }
  });
  });

  var Menu = {

    el: {
      ham: $('.navbar-toggler'),
      menuTop: $('.top'),
      menuMiddle: $('.middle'),
      menuBottom: $('.bottom')
    },

    init: function() {
      Menu.bindUIactions();
    },

    bindUIactions: function() {
      Menu.el.ham
          .on(
            'click',
          function(event) {
          Menu.activateMenu(event);
          event.preventDefault();
        }
      );
    },

    activateMenu: function() {
      Menu.el.menuTop.toggleClass('top-click');
      Menu.el.menuMiddle.toggleClass('middle-click');
      Menu.el.menuBottom.toggleClass('bottom-click');
    }
  };

  Menu.init();
});