function sendReaderEdit(id){
  $.ajax({
    type: "GET",
    url: `/api/v1/links/${id}`,
    data: {read_status: status},
    success: function(error) {
      getAllLinks()
    }
  });
}
