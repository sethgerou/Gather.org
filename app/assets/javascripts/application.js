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
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery

$(function() {
    $(document).on('click', '#new-story', function(event){
      event.preventDefault();
      container = $(event.target).parent().parent();
      topic_id = container.attr('id');
      $.ajax({
        url: '/topics/' + topic_id + '/stories/new',
        method: 'get'
      }).done(function(response){
        console.log(response);
        $('.five').html(response);
      })
    })
});
