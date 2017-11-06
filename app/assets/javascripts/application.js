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
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .
//= require editable/bootstrap-editable
//= require editable/rails
//= require cocoon
//= require rails.validations
//= require rails.validations.simple_form

function showUnity(a, b, c, d) {
  var a = document.getElementsByName(a);
  $(a).hide();
  var b = document.getElementsByName(b);
  $(b).hide();
  var c = document.getElementsByName(c);
  $(c).hide();
  var d = document.getElementsByName(d);
  $(d).show();
};
