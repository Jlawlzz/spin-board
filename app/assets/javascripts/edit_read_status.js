function sendReaderEdit(status, id){
  $.ajax({
    type: "PUT",
    url: `/api/v1/links/${id}`,
    data: {read_status: status},
    success: function(error) {
      getAllLinks()
    }
  });
}
