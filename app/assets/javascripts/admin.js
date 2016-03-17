// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  bindAdminListeners();
})

var bindAdminListeners = function(){
  $(".admin-product-link").on("click", showAdminProductDetails);
}

var showAdminProductDetails = function(e){
  e.preventDefault();
  var productId = $(this).find('a').attr('href').match(/products\/(\d+)/)[1];

  $.ajax({
    method: "get",
    url: "/admin/products/" + productId
  }).done(function(response){
    $('#product-modal .modal-content').html(response);
  });

  $('#product-modal').modal('show');
}
