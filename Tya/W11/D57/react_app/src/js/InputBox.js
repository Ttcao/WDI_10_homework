var React = require('react');

var InputBox = React.createClass({

  render: function() {
    return (
      <form>
        <input onChange={this.props.addPunProp} />
        <button>Pun it!</button>
      </form>
    )
  },

});

module.exports = InputBox;
