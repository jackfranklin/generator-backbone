#/*global require*/
'use strict'

require.config
  shim:
    underscore:
      exports: '_'
    backbone:
      deps: [
        'underscore'
        'jquery'
      ]
      exports: 'Backbone'<% if (compassBootstrap) { %>
    bootstrap:
      deps: ['jquery'],
      exports: 'jquery'<% } %><% if (templateFramework === 'handlebars') { %>
    handlebars:
      exports: 'Handlebars'<% } %>
  paths:
    jquery: '../bower_components/jquery/jquery'
    backbone: '../bower_components/backbone/backbone'
    underscore: '../bower_components/underscore/underscore'<% if (compassBootstrap) { %>
    bootstrap: '../bower_components/sass-bootstrap/dist/js/bootstrap'<% } %><% if (templateFramework === 'handlebars') { %>
    handlebars: '../bower_components/handlebars/handlebars'<% } %>

require [
  'backbone'
], (Backbone) ->
  Backbone.history.start()
