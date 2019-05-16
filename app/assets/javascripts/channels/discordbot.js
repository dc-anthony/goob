App.discordbot = App.cable.subscriptions.create("DiscordbotChannel", {
  connected: function() {
    debugger
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    // Called when there's incoming data on the websocket for this channel
    // $("#discordbot").prepend(data.html); // came from walkthrough
  }
});
