module.exports =

  apply: ->

    body = document.querySelector('html')

    setLayoutMode = (layoutMode) ->
      body.setAttribute('theme-one-light-ui-layoutmode', layoutMode.toLowerCase())

    atom.config.onDidChange 'one-light-ui.layoutMode', ->
      setLayoutMode(atom.config.get('one-light-ui.layoutMode'))

    setLayoutMode(atom.config.get('one-light-ui.layoutMode'))
