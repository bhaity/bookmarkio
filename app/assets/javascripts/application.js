// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require imagesloaded.pkgd.min.js
//= require masonry.pkgd.min.js
//= require jquery.tokeninput.js
//= require select2
//= require select2.js
//= require_tree .

$(document).ready(function() {
  $('.to_mason').imagesLoaded(function(){
    $('.to-mason').masonry({
      columnWidth: 375,
      itemSelector: '.bookmark-tile'
    });
  });
  
  var url = $('.tag-select').data('url');
  $('.tag-select').tokenInput(url, {
  	theme: 'facebook',
  	minChars: 2,
    allowCustomEntry: true,
    preventDuplicates: true
    //prePopulate: $('#movie_tag_list_tokens').data('load')
  });

});