// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  bindCategoryListeners();
})

var bindCategoryListeners = function(){
  $(".category-list").on("click", showCategoryProducts);
  $(".category-list").mouseover(removeLinkUnderline);
}

var showCategoryProducts = function(e){
  window.location = $(this).find('a').attr('href');
}
