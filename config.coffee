path = (paths) ->
  # (\\/|\\\\) is (\|/), windows or unix-style directory separators
  paths.join && paths = paths.join('|')
  paths = paths.replace(/\//g, '(\\/|\\\\)')
  new RegExp('^' + paths)
  
exports.config =
  plugins:
    react:
      autoIncludeCommentBlock: yes
      harmony: yes
  conventions:
    assets: path('app/assets')
  modules2:
    definition: false
    wrapper: false
  paths:
    public: '_public'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor|bower_components/
      order:
        before: [
          "bower_components/react/react-with-addons.js",
          "bower_components/react-async/react-async.js",
          "bower_components/react-router-component-bower/react-router-component.js"
        ]

    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor|bower_components)/
