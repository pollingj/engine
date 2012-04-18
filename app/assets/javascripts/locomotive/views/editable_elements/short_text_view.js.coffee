Locomotive.Views.EditableElements ||= {}

class Locomotive.Views.EditableElements.ShortTextView extends Backbone.View

  tagName: 'li'

  className: 'text input short'

  render: ->
    $(@el).html(ich.simple_text_input(@model.toJSON()))

    @$('input').bind 'keyup', (event) =>
      input = $(event.target)
      @model.set(content: input.val())

    return @

  after_render: ->
    # do nothing

  refresh: ->
    # do nothing

  tinymce_settings: ->
    window.Locomotive.tinyMCE.minimalSettings

  remove: ->
    super
