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
document.addEventListener("turbolinks:before-cache", function() {
  $('.slide-images').slick('unslick');
});


$(document).on('turbolinks:load', function() {
  // トップへスクロールするアニメーション
  $('#up-scroll').hide();
  $(window).scroll(function(){
    $('#pos').text($(this).scrollTop());
    if ($(this).scrollTop() > 60){
      $('#up-scroll').fadeIn();
    }else{
      $('#up-scroll').fadeOut();
    }
  });

  // トップへスクロールするアニメーション
  $('#up-scroll a').click(function() {
    $('html, body').animate({
        scrollTop:0
    }, 800);
    return false;
  });

  // 郵便番号入力による住所自動反映
  $('#user_postal_code').jpostal({
    postcode : [
      '#user_postal_code'
    ],
    address: {
      "#user_prefecture_code": "%3",
      "#user_municipality": "%4",
    }
  });

  // 画像スライダー
  $('.slide-images').slick({
    dots: true,
    autoplay: true,
    autoplaySpeed: 2300,
    pauseOnFocus: false,
    pauseOnHover: false,
    pauseOnDotsHover: false
  });

  // スライドアニメーション
  var early = {
    duration: 6000,
    origin: 'right',
    distance: '100px',
    delay: 50,
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
  ScrollReveal().reveal('.animate-link-box',lastoption);
  ScrollReveal().reveal('.two-btn',early);
  ScrollReveal().reveal('.search-form',early);
  // ScrollReveal().reveal('.link-box',lastoption);
  // ScrollReveal().reveal('.three-btn',early);

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

  // スクロール時ヘッダー透過
  $(document).ready(function() {
  $(window).scroll(function() {
    if ($(this).scrollTop() > 50) {
      $('header').css('opacity', 0.7);
    } else {
      $('header').css('opacity', 1);
    }
  });
  });

  // ハンバーガーアイコンアニメーション
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

  // よくある質問
  $('.hide-class').hide();
  $('.qa-icon2').hide();

  $('.question-content').click(function(){
    var $answer = $(this).find('.hide-class');

    if($answer.hasClass('open')) {
      $answer.removeClass('open');
      $answer.slideUp();
      $(this).find('.qa-icon1').show();
      $(this).find('.qa-icon2').hide();
    } else {
     $answer.addClass('open');
     $answer.slideDown();
     $(this).find('.qa-icon1').hide();
    $(this).find('.qa-icon2').show();
   }
  });

  // 通知機能
  $('.notification-area').hide();
  $('.slide-notification').click(function(){

    if($('.notification-area').hasClass('open')) {
      $('.notification-area').fadeOut();
      $('.notification-area').removeClass('open');
    } else {
      $('.notification-area').addClass('open');
      $('.notification-area').fadeIn();
    }
  });

  $('#notification-close-btn').click(function(){
    if($('.notification-area').hasClass('open')) {
      $('.notification-area').removeClass('open');
      $('.notification-area').fadeOut();
    }
  });

  $(window).scroll(function() {
    if ($(this).scrollTop() > 400) {
      $('.notification-area').removeClass('open');
      $('.notification-area').fadeOut();
    }
  });
});