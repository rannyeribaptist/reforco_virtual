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
//= require jQuery-Mask-Plugin
//= require bootstrap-sprockets
//= require editable/bootstrap-editable
//= require editable/rails
//= require cocoon
//= require rails.validations
//= require rails.validations.simple_form
//= require gauge/gauge
//= require dashboard
//= require css3clock/js/css3clock
//= require_tree .

// Lesson per unity filter

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
// End lesson per unity filter

var SPMaskBehavior = function (val) {
  return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
},
spOptions = {
  onKeyPress: function(val, e, field, options) {
    field.mask(SPMaskBehavior.apply({}, arguments), options);
  }
};
$(document).ready(function(){
  $('.cellphone').mask(SPMaskBehavior, spOptions);
});
