var _pages = {
	'/': {
		key: '/',
		name: 'Hello World',
		link: 'http://facebook.github.io/react',
		logo: 'images/react.png'
	}
};

var PageStore = {

	getPageFromKey: function(key) {
		if (!_pages.hasOwnProperty(key))
			return null;

		return _pages[key];
	},

	getAll: function() {
		return _pages;
	}

};

module.exports = PageStore;
