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
    var searchURL = 'movies/search/'+keyword
    var promise = $.ajax({
      url: searchURL,
      method: 'GET',
      datatype: "JSON"
    });

    // promise.success(function(data){
    //   console.log(data);
    //   window.location.replace('movies/results/');
    // });

    promise.fail(function(){
      console.log("Oops!")
    });

  });
});
