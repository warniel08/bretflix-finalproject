$( document ).ready(function() {

// Submits on enter
  $("#keyword").on('keyup', function(e){
    if (e.which == 13) {
      $("#keyword-search").submit();
    }
  });  


  $("#keyword-search").on('submit', function(e){
    e.preventDefault();
    var $form = $(e.target)
    var keyword = $form.serializeArray()[0].value;
    console.log(keyword)
    var searchURL = 'movies/search/'+ keyword
    console.log(searchURL)
    // var promise = $.ajax({
    //   url: searchURL,
    //   method: 'GET',
    //   datatype: "JSON"
    // });

    // promise.done(function(arrayOfTweets){
    //   $("#tweets-container ul li").addClass("hidden")
    //   processTweets(arrayOfTweets);
    //   $("#search").removeClass("fail-search");
    // });

    // promise.error(function(){
    //   $("#search").addClass("fail-search");
    // })

  });
});
