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
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require cocoon

$(function() {
    // 「Open」ボタンをクリック時に、fadeInメソッドでHTML要素を表示する
    $('#open').on('click', function() {
      $('#overlay, #modalWindow').fadeIn();
    });

    // 「Close」ボタンをクリック時に、fadeOutメソッドでHTML要素を非表示にする
    $('#close').on('click', function() {
      $('#overlay, #modalWindow').fadeOut();
    });

    locateCenter();  // => モーダルウィンドウを中央配置するための初期値を設定する
    $(window).resize(locateCenter);  // => ウィンドウのリサイズに合わせて、モーダルウィンドウの配置を変える

  // モーダルウィンドウを中央配置するための配置場所を計算する関数
    function locateCenter() {
      let w = $(window).width();
      let h = $(window).height();

      let cw = $('#modalWindow').outerWidth();
      let ch = $('#modalWindow').outerHeight();

      $('#modalWindow').css({
        'left': ((w - cw) / 2) + 'px',
        'top': ((h - ch) / 2) + 'px'
      });
    }
  });