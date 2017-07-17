
function createSong(title) {
  var newSong = { title: title };
  var fullPath = window.location.href;
  var artistPath = fullPath.replace("http://localhost:3000", "/api");
  var songsPath = artistPath + "/songs";

  $.ajax({
    type: "POST",
    url: songsPath,
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  window.location.reload();

}

function submitSong(event) {
  event.preventDefault();
  // resetErrors();
  createSong($("#song_title").val());
  }


function removeSong(event) {
    event.preventDefault();
    var buttonClicked = $(event.target);
    var songId = buttonClicked.data('id');
    var fullPath = window.location.href;
    var artistPath = fullPath.replace("http://localhost:3000", "/api");
    var songsPath = artistPath + "/songs";

    $.ajax({
      type: "DELETE",
      url: songsPath + "/" + songId,
      contentType: "application/json",
      dataType: "json",
  })
window.location.reload();
}

$(document).ready(function(){
  $("form").bind('submit', submitSong);
  $(".delete").bind('click', removeSong);
});
