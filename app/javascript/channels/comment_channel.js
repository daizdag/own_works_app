import consumer from "./consumer"

if(location.pathname.match(/\/collections\/\d/)){

  consumer.subscriptions.create({
    channel: "CommentChannel",
    collection_id: location.pathname.match(/\d+/)[0]
  }, {
    
    connected() {
      // Called when the subscription is ready for use on the server
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received(data) {
    const html = `
    <div class="comment">
      <div class="user-info">${data.user.nickname}</div>
    <div class="comment-content">
        <div class="comment-text">
        <p>${data.comment.text}</p>
      </div>
      <a class="comment-delete-btn" data-method="delete" href="/collections/${data.comment.collection}/comments/${data.comment.id}">削除</a>
    </div>
  </div>`
    const comments = document.getElementById("comments")
    comments.insertAdjacentHTML('beforeend', html)
    const commentForm = document.getElementById("comment-form")
    commentForm.reset();

    }
  })
}
