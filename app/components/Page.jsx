var PageStore = require('../stores/PageStore');

var Page = React.createClass({

	getInitialState: function() {
		var page = PageStore.getPageFromKey(this.props.page || '/');

		return {
			page: page
		};
	},

	render: function() {
		var page = this.state.page;

		return (
			<div>
				<a href={page.link}>
					<h1>{page.name}</h1>
					<img src={page.logo} />
				</a>
			</div>
		);
	},

});

module.exports = Page;
