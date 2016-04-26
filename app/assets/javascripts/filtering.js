$(document).ready(function(){

  $('#searchLinkField').keyup(function(){
    filterLinks()
  })

  $('#searchLinkField').onkeyup = function(key){
   if(key.keyCode == 13 || key.keyCode == 46){
     filterIdeas()
   }
  }

})

var filterLinks = function(){
  $('.link_item').hide()
  $('.link_item').filter(function(){
    return matchLink($('#searchLinkField').val(), this)
  }).show()
}

var matchLink = function(search, linkTotal) {
  return (matchTitle(search, linkTotal) || matchUrl(search, linkTotal) || matchStatus(search, linkTotal))
}

var matchTitle = function(search, linkTotal) {
  return $(linkTotal).children('.title').text().substr(0, search.length) == search
}

var matchUrl = function(search, linkTotal) {
  return $(linkTotal).children('.url').text().substr(0, search.length) == search
}

var matchStatus = function(search, linkTotal) {
  console.log(search)
  return $(linkTotal).children('.read-status').text().split(' ')[2].substr(0, search.length) == search
}
