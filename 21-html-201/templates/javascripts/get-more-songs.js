define(function() {
  return {
    querySongs: function(fnRefFromMainJS) {
      $.ajax({
        url: "./javascripts/more-songs.json"
      }).done(function(data) {
        fnRefFromMainJS(data);
      });
    }
  };
});