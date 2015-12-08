root = document.documentElement

module.exports =
  activate: (state) ->
    atom.config.observe('one-light-ui.fontSize', setFontSize)
    atom.config.observe('one-light-ui.layoutMode', setLayoutMode)

  deactivate: ->
    unsetFontSize()
    unsetLayoutMode()

# Font Size -----------------------
setFontSize = (currentFontSize) ->
  if Number.isInteger(currentFontSize)
    root.style.fontSize = "#{currentFontSize}px"
  else if currentFontSize is 'Auto'
    unsetFontSize()

unsetFontSize = ->
  root.style.fontSize = ''

# Layout Mode -----------------------
setLayoutMode = (layoutMode) ->
  root.setAttribute('theme-one-light-ui-layoutmode', layoutMode.toLowerCase())

unsetLayoutMode = ->
  root.removeAttribute('theme-one-light-ui-layoutmode')
