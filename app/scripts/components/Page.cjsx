# @cjsx React.DOM

PageStore = require("../stores/PageStore")
Page = React.createClass(
  getInitialState: ->
    page = PageStore.getPageFromKey(@props.page or "/")
    page: page

  render: ->
    page = @state.page
    <div>
      <a href={page.link}>
        <h1>{page.name}</h1>
        <img src={page.logo} />
      </a>
    </div>
)

module.exports = Page
