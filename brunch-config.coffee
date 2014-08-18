exports.config =
  plugins:
    react:
      autoIncludeCommentBlock: yes
      harmony: yes
  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor|bower_components/
      order:
        before: [
          "bower_components/react/react-with-addons.js",
          "bower_components/react-async/react-async.js",
          "bower_components/react-router-component-bower/react-router-component.js",
          "bower_components/react.backbone/react.backbone.js"
        ]

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^(app|vendor|bower_components)/
