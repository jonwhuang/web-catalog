// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  bindProductListeners();
})

var bindProductListeners = function(){
  $(".product-display-image").on("click", showProductDetails);
  $(".product-display-image").mouseover(removeLinkUnderline);
}

var showProductDetails = function(e) {
  e.preventDefault();
  var productId = $(this).find('a').attr('href').match(/products\/(\d+)/)[1];

  $.ajax({
    method: "get",
    url: "/products/" + productId,
    dataType: 'json'
  }).done(function(response){
    $('#product-modal .modal-title').html(response.title);
    $('#product-img-modal img').attr("src", response.picture_link);
    $('#product-price-modal').html("$" + response.price);
    $('#product-desc-modal').html(response.description);
  });

  $('#product-modal').modal('show');
}

var removeLinkUnderline = function() {
  $('a:hover').css("text-decoration", "none");
}

var displayError = function(e, data) {
  $('.flash-alerts').empty();
  $('.flash-order-alerts').html(data.responseText)
}
