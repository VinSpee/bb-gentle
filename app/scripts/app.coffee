define ['marionette', 'components/view', 'components/model'], (Marionette, ComponentView, ComponentModel) ->
	App = new Backbone.Marionette.Application()

	App.addRegions
		mainRegion: "[role=main]"

	App.on "initialize:after", ->
		headlineComponent = new ComponentModel
			name: "Poo Comp"
			description: "poo poo"
			markup: "<h1>Headline</h1>"

		compView = new ComponentView
			model: headlineComponent


		App.mainRegion.show(compView)

	App

