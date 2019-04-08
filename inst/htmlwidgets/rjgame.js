HTMLWidgets.widget({

  name: 'rjgame',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance
    var elementId = el.id;
    var container = document.getElementById(elementId);
    var div = document.createElement("div");


    var myGamePiece;
    var myObstacles = [];
    var myScore;

    return {

      renderValue: function(x) {

        // TODO: code to render the widget, e.g.
        el.innerText = x.message;
        startGame();

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
