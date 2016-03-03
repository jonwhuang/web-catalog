// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  bindContactListeners();
})

var bindContactListeners = function(){
  $('.contact-page').on('click', showContactPage);
  $('#close').on('click', hideContactPage);
}

var showContactPage = function(){
  $('#contact-overlay').show();
}

var hideContactPage = function(){
  $('#contact-overlay').hide();
}
