define(function() {
  return {
    querySongs: function(fnRefFromMainJS) {
      $.ajax({
        url: "./javascripts/songs.json"
      }).done(
        // Send a callback to jQuery to execute when it's done
        function(data) {
          // Execute the callback function that was sent to me
          console.log("songs array from jQuery: ", data);
          fnRefFromMainJS.call(this, data);
        }
      );

    }
  };
});