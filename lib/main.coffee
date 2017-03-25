root = document.documentElement

module.exports =
  activate: (state) ->
    atom.config.observe 'one-light-ui.fontSize', (value) ->
      setFontSize(value)

    atom.config.observe 'one-light-ui.tabSizing', (value) ->
      setTabSizing(value)

    # DEPRECATED: This can be removed at some point (added in Atom 1.17/1.18ish)
    # It removes `layoutMode`
    if atom.config.get('one-light-ui.layoutMode')
      atom.config.unset('one-light-ui.layoutMode')

  deactivate: ->
    unsetFontSize()
    unsetTabSizing()


# Font Size -----------------------

setFontSize = (currentFontSize) ->
  if Number.isInteger(currentFontSize)
    root.style.fontSize = "#{currentFontSize}px"
  else if currentFontSize is 'Auto'
    unsetFontSize()

unsetFontSize = ->
  root.style.fontSize = ''


# Tab Sizing -----------------------

setTabSizing = (tabSizing) ->
  root.setAttribute('theme-one-light-ui-tabsizing', tabSizing.toLowerCase())

unsetTabSizing = ->
  root.removeAttribute('theme-one-light-ui-tabsizing')
