describe "One Light UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('one-light-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe '12px'

    atom.config.set('one-light-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

  it "allows the tab sizing to be set via config", ->
    atom.config.set('one-light-ui.tabSizing', 'Maximum')
    expect(document.documentElement.getAttribute('theme-one-light-ui-tabsizing')).toBe 'maximum'

  it "allows the tab sizing to be set via config", ->
    atom.config.set('one-light-ui.tabSizing', 'Minimum')
    expect(document.documentElement.getAttribute('theme-one-light-ui-tabsizing')).toBe 'minimum'

  it "allows the dock toggle buttons to be hidden via config", ->
    atom.config.set('one-light-ui.hideDockButtons', true)
    expect(document.documentElement.getAttribute('theme-one-light-ui-dock-buttons')).toBe 'hidden'
