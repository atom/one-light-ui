describe "One Light UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('one-light-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('one-light-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('one-light-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the tab sizing to be set via config", ->
    expect(document.documentElement.getAttribute('theme-one-light-ui-tabsizing')).toBe 'auto'

    atom.config.set('one-light-ui.tabSizing', 'Minimum')
    expect(document.documentElement.getAttribute('theme-one-light-ui-tabsizing')).toBe 'minimum'
