$(document).on("ready", function)
  $(".upvote").on("click", vote)
  $(".downvote").on("click", vote)
  
  var $votes = $(this).parent().children(".voter")
  $.ajax("/vote", {
    method: "POST",
    data: {
      song_title: $(this).songTitle
      value: $(this).data().voteValue,
    },
     error: function(data) {
       alert(data.error)
     },
     success: function(data) {
       votes.text(data.total_votes)
     }
    }
  })