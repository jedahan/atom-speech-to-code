module.exports =
  activate: (state) ->
    atom.workspace.observeTextEditors (editor) ->
      editor.onDidStopChanging =>
        editor.scan /\b[A-Z]\w+/, ({match, replace}) =>
          replace(match[0].charAt(0).toLowerCase() + match[0].slice(1))
