module.exports =

  apply: ->

    root = document.documentElement

    setLayoutMode = (layoutMode) ->
      root.setAttribute('theme-one-light-ui-layoutmode', layoutMode.toLowerCase())

    atom.config.onDidChange 'one-light-ui.layoutMode', ->
      setLayoutMode(atom.config.get('one-light-ui.layoutMode'))

    setLayoutMode(atom.config.get('one-light-ui.layoutMode'))
