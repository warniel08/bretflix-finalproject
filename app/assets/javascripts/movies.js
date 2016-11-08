$( document ).ready(function() {

  function processMovies(arrayOfMovies){
    var movieList = "<h1>Search Results by Keyword</h1>";

    for (var i = 0; i < arrayOfMovies.length; i++) {
      movieList +="<li>"+arrayOfMovies[i].title+"</li>";
    };
    $("#main-content").append(movieList);
    $('.hide-on-keyword-search').hide();
  };


// Submits on enter
  $("#keyword").on('keyup', function(e){
    if (e.which == 13) {
      $("#keyword-search").submit();
      return false;
    }
  });


  $("#keyword-search").on('submit', function(e){
    e.preventDefault();
    var $form = $(e.target)
    var keyword = $form.serializeArray()[0].value;
    debugger;
    var searchURL = 'movies/search/'+keyword
    var promise = $.ajax({
      url: searchURL,
      method: 'GET',
      datatype: "JSON"
    });

    promise.success(function(arrayOfMovies){
      processMovies(arrayOfMovies);
    });

    promise.fail(function(){
      console.log("Oops!")
    });

  });
});
