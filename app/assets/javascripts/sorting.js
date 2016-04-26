$(document).ready(function(){

  $('#sortAlphebetically').on('click', function(){
    sortListAlphebetically()
  })

})

function sortListAlphebetically(){
  $("#links-list .link_item").sort(function (a, b) {
    return rankListItem(a, b)
  }).each(function (finalSort) {
    var linkItem = $(this);
    linkItem.remove();
    $(linkItem).appendTo("#links-list");

  })
}

function rankListItem(a, b){
  if ($(a).children('.title').text().toLowerCase() > $(b).children('.title').text().toLowerCase()){
      return 1;
  } else if ( ($(a).children(".title").text().toLowerCase() == $(b).attr("title").text().toLowerCase()) ){
      return 0;
  } else {
      return -1;
  }
}
