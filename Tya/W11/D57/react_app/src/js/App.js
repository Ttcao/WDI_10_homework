var React = require('react');
var PunBox = require('./PunBox');
var InputBox = require('./InputBox');

var App = React.createClass({
  // every component has an initial state information, data that it holds - define the state:
  getInitialState: function() {
    return { puns: ["I ate 4 bowls of delicious alphabet soup. After that I had a massive vowel movement.", "	Why don't programmers like nature? It has too many bugs.", "I wasn't originally going to get a brain transplant, but then I changed my mind.", "Did you hear about the guy who got hit in the head with a can of soda? He was lucky it was a soft drink.", "Have you ever tried to eat a clock? It's very time consuming.", "	I'm reading a book about anti-gravity. It's impossible to put down.", "At first I didn't like your new cut. But it's beginning to grow on me."] }
  },

  render: function() {
    return(
      <div>
        <h1>Punzzz</h1>
        <InputBox addPunProp={this.addPun} />

        { this.state.puns.map(function(element, index) {
          // pass in the state of this parent component to its child component punbox
          // so pun, key and id are properties taken from this state.
          return <PunBox pun={element} key={index} id={index} />
        }) }

      </div>
    )
  },

  addPun: function(e) {
    var joke = e.target.value;
    this.setState({
      puns: this.state.puns.concat(joke)
    });
  }
});

module.exports = App;
