var React = require('react');
var PunBox = React.createClass({

  getInitialState: function() {
    return {
      pun: this.props.pun
    }
  },

  render: function() {
    // can only render JSX code
    var liClass = "li-class"
    return (
        <div data-key={this.props.id}>
          <ul>
            <li className={liClass}>{this.state.pun}</li>
          </ul>
        </div>
    )

  }
});

module.exports = PunBox;
