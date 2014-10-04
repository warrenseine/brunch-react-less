# @cjsx React.DOM

Locations = ReactRouter.Locations
Location = ReactRouter.Location
Page = require("./components/Page")
App = React.createClass(
  displayName: "App"
  render: ->
    <Locations hash>
      <Location path="/" handler={Page} />
    </Locations>
)
module.exports = React.renderComponent(<App />, document.getElementById("app"))
