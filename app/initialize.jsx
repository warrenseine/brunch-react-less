var Locations	= ReactRouter.Locations;
var Location	= ReactRouter.Location;

var Page = require('./components/Page');

var App = React.createClass({

	render: function() {
		return (
			<Locations hash>
				<Location path="/" handler={Page} />
			</Locations>
		);
	},

});

module.exports = React.renderComponent(
  <App />,
  document.getElementById('app')
);
