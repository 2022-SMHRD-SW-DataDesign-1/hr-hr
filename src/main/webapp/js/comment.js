const commentform = document.querySelector("#commentform");
const commentsContainer = document.querySelector("#comments");
commentform.addEventListener("submit", function (e) {
  e.preventDefault();
  const usernameInput = commentform.elements.username;
  const commentInput = commentform.elements.comment_text;
  addComment(usernameInput.value, commentInput.value);
  usernameInput.value = "";
  commentInput.value = "";
});

const addComment = (username, comment) => {
const newComment = document.createElement("li");
const bTag = document.createElement("b");


bTag.append(username);
newComment.append(bTag);
newComment.append(`${comment}`);
commentsContainer.append(newComment);
};

// 댓글 삭제
commentsContainer.addEventListener("click", (e) => {
  e.target.nodeName === "LI" && e.target.remove();
});