exports.config =
  plugins:
    react:
      autoIncludeCommentBlock: yes
      harmony: yes
  conventions:
    assets:  /^app\/assets/
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
