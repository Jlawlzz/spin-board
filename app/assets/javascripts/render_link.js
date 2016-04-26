function renderLink(link) {
  $('#links-list').prepend(
     `<div class='link' id=${link.id}>
        <h2 class='title'>${link.title}</h2>
        <h2 class='url'>${link.link_url}</h2>
        <button id='read-${link.id}'>${readStatus(link.read_status)}</button>
      </div>`
  );
  addEditListener(link.id);
};

function readStatus(status){
  return (status === 'false') ? 'Mark as Read' : 'Mark as Unread'
}

function readBoolean(status){
  return (status === 'Mark as Read') ? true : false
}

function addEditListener(id){
  $(`#read-${id}`).on('click', function(e){
    var status = readBoolean(this.innerText)
    var id = this.id.split('-')[1]
    $.ajax({
      type: "PATCH",
      url: `/api/v1/links/${id}`,
      data: {read_status: status},
      success: function(error) {
        getAllLinks()
      }
    });
  });
}
