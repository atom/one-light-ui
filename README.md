## One Light UI theme [![Build Status](https://travis-ci.org/atom/one-light-ui.svg?branch=master)](https://travis-ci.org/atom/one-light-ui)

A light UI theme that adjusts to most syntax themes.

![one-light-ui](https://cloud.githubusercontent.com/assets/378023/6980108/fb10eec2-da27-11e4-9e52-7f4115044a97.png)

> The font used in the screenshots is [Fira Mono](https://github.com/mozilla/Fira). Icons by [file-icons](https://atom.io/packages/file-icons).

### Combine with other Syntax themes

There is a matching [syntax theme](https://atom.io/themes/one-light-syntax), but most other syntax themes work fine as well.

![one-light-ui + sepia](https://cloud.githubusercontent.com/assets/378023/6980110/fc59aca6-da27-11e4-963c-7ecd8400b2c0.png)
> One light + [Sepia](https://atom.io/themes/sepia-syntax)

![one-light-ui + chester](https://cloud.githubusercontent.com/assets/378023/6980109/fb13e384-da27-11e4-8324-8d8ee2de5ad5.png)
> One light + [Chester](https://atom.io/themes/chester-atom-syntax)

### Install

This theme is installed by default with Atom and can be activated by going to the __Settings > Themes__ section and selecting "One Light" from the __UI Themes__ drop-down menu.

### Settings

![Theme settings](https://cloud.githubusercontent.com/assets/378023/15923597/026ef132-2e69-11e6-84ff-056d448bdfa1.png)

In the theme settings you can change the __Font Size__ to scale the whole UI up or down.

Switch between 3 __Layout Modes__:

1. `Auto` (default) - In Auto mode, the UI and font size will automatically change based on the window size.
2. `Compact` - In Compact mode, the UI stays compact to leave more space for the editor.
3. `Spacious` - In Spacious mode, the UI is expanded, giving some breathing room.

And pick a __Tab Sizing__ mode:

1. `Auto` (default) - In Auto mode, the tabs switch based on the window size.
2. `Minimum` - In Mimimum mode, the tabs will be as small as possible.
3. `Even` - In Even mode, all tabs will be the same size.

### Customize

It's also possible to resize only certain areas by adding the following to your `styles.less` (Use DevTools to find the right selectors):

```css
.theme-one-light-ui {
  .tab-bar { font-size: 18px; }
  .tree-view { font-size: 14px; }
  .status-bar { font-size: 12px; }
}
```

### FAQ

__Why do the colors change when I switch Syntax themes.__
This UI theme uses the same background color as the chosen syntax theme. If that syntax theme has a dark background color, it only uses its hue, but otherwise stays light. This lets you use light-dark combos.
