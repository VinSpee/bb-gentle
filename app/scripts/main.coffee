require.config
	paths:
		jquery: '../components/jquery/jquery'
		underscore: '../components/underscore/underscore'
		backbone: '../components/backbone/backbone'
		marionette: '../components/backbone.marionette/lib/backbone.marionette'
		text: '../components/requirejs-text/text'
	shim:
		marionette:
			deps: ['underscore', 'jquery', 'backbone']
			exports: 'Marionette'
		backbone:
			deps: ['underscore', 'jquery']
			exports: 'Backbone'
		underscore:
			exports: '_'
			init: ->
				@_.templateSettings =
					interpolate : /\{\{(.+?)\}\}/g

require ['marionette', 'app'], (Marionette, App) ->
	do App.start
