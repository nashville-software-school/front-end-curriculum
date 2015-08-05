requirejs.config({
  baseUrl: './javascripts',
  paths: {
    'jquery': '../bower_components/jquery/dist/jquery.min',
    'hbs': '../bower_components/require-handlebars-plugin/hbs',
    'bootstrap': '../bower_components/bootstrap/dist/js/bootstrap.min'
  },
  shim: {
    'bootstrap': ['jquery']
  }
});

requirejs(
  ["jquery", "hbs", "bootstrap", "get-initial-songs", "get-more-songs"], 
  function($, Handlebars, bootstrap, initialSongs, moreSongs) {
    var moreSongsLoaded = false;

    console.log("asking initialSongs module for songs array");
    initialSongs.querySongs(function(songs) {
      console.log("songs array sent back from module: ", songs);

      console.log("Now binding the song array to the Handlebar template");
      require(['hbs!../templates/songs'], function(songTemplate) {
        $("#songList").html(songTemplate(songs));
      });
    });

    console.log("adding a click event handle for the more songs button");
    $(document).on("click", "#loadMoreSongs", function(e) {
      
      if (!moreSongsLoaded) {
        moreSongsLoaded = true;

        moreSongs.querySongs(function(songs) {
          console.log("songs array sent back from moreSongs module: ", songs);

          $("#loadMoreSongs").remove();

          console.log("Now binding the song array to the Handlebar template");
          require(['hbs!../templates/songs'], function(songTemplate) {
            $("#songList").append(songTemplate(songs));
          });
        });  
      } else {
        $('#alreadyLoaded').modal();
      }

    });
  }
);
