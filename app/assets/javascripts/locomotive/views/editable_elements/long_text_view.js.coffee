#= require ./short_text_view

Locomotive.Views.EditableElements ||= {}

class Locomotive.Views.EditableElements.LongTextView extends Locomotive.Views.EditableElements.ShortTextView
  
  render: ->
    $(@el).html(ich.editable_text_input(@model.toJSON()))
    
    return @

  tinymce_settings: ->
    window.Locomotive.tinyMCE.defaultSettings