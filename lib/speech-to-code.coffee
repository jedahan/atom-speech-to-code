lowercase = require('change-case')['lowercase']

module.exports =
  activate: (state) ->
    atom.workspaceView.command "speech-to-code:lowercase", ->
      editor = atom.workspace.getActiveEditor()
      return unless editor?

      selection = editor.getSelection()
      text = selection.getText()

      # make sure we have a current selection
      if text
        newText = lowercase word
        selection.insertText newText
