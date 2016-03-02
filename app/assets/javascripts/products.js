// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  bindProductListeners();
})

var bindProductListeners = function(){
  $(".product-display-image").on("click", showProductDetails);
  $(".product-display-image").mouseover(removeLinkUnderline);
  // $(".in-stock-btn").on("ajax:success", showCart);
  // $(".in-stock-btn").on("ajax:error", notLoggedIn);
  $(".quantity-cart-view").on("ajax:success", 'form', updateQuantity);
  $(".quantity-cart-view").on("ajax:error", 'form', displayError);
  $(".delete-order-detail").on("ajax:success", deleteOrderDetail);
  $(".quantity-cart-view").on("ajax:success", '.delete-order-detail', deleteOrderDetail);
}

var showProductDetails = function() {
  window.location = $(this).find('a').attr('href');
}

var removeLinkUnderline = function() {
  $('a:hover').css("text-decoration", "none");
}

var updateQuantity = function(e, data) {
  $('.flash-alerts').empty();
  $('.flash-order-alerts').empty();
  $('.quantity-cart-view').html(data);
}

var displayError = function(e, data) {
  $('.flash-alerts').empty();
  $('.flash-order-alerts').html(data.responseText)
}

var deleteOrderDetail = function(e, data) {
  window.location.reload(true);
}
