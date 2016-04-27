function renderLink(link) {
  $('#links-list').prepend(
     `<div class='link_item' id=${link.id}>
        <h2 class='title'>${link.title}</h2>
        <h3>title: ${link.url_title}</h3>
        <h3>h1: ${link.url_h1}</h3></br>
        <a href='${link.link_url}' class='url'>${link.link_url}</a></br></br>
        <button class='read-status' id='read-${link.id}'>${readStatus(link.read_status)}</button></br></br>
        <a href="/links/${link.id}/edit">Edit Link</a>
      </div>`
  );
  addReaderListener(link.id);
};

function readStatus(status){
  return (status === 'false') ? 'Mark as Read' : 'Mark as Unread'
}

function readBoolean(status){
  return (status === 'Mark as Read') ? true : false
}

function addReaderListener(id){
  $(`#read-${id}`).on('click', function(e){
    var status = readBoolean(this.innerText)
    var id = this.id.split('-')[1]
    sendReaderEdit(status, id);
  });
}
