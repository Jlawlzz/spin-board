function sendEdit(id){
  $.ajax({
    type: "GET",
    url: `/links/${id}/edit`,
    success: function(error) {
      console.log('success')
    }
  });
}
