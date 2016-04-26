$(document).ready(function(){
  getAllLinks();
});

var getAllLinks = function() {
  $.getJSON('/api/v1/links', function(response) {
    $.each(response, function(index, link) {
      renderLink(link);
    });
  });
};
