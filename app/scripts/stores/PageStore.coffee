_pages = "/":
  key: "/"
  name: "Hello World"
  link: "http://facebook.github.io/react"
  logo: "images/react.png"

PageStore =
  getPageFromKey: (key) ->
    return null  unless _pages.hasOwnProperty(key)
    _pages[key]

  getAll: ->
    _pages

module.exports = PageStore
