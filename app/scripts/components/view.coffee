require ['marionette', 'text!components/template.html'], (Marionette, ComponentTemplate) ->
	class ComponentView extends Backbone.Marionette.ItemView
		template: ComponentTemplate

