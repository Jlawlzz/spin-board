$(document).ready(function(){
  getAllLinks();
});

var getAllLinks = function() {
  $('#links-list').empty()
  $.getJSON('/api/v1/links', function(response) {
    $.each(response, function(index, link) {
      renderLink(link);
    });
  });
};
