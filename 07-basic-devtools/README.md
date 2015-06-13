# Prerequisite homework
None

# Learning the basic tools of the trade 

## Sublime Text

1. Install [Package manager](https://packagecontrol.io/installation#st3)
  + [HTMLTidy](https://packagecontrol.io/packages/HtmlTidy)
  + [Pretty JSON](https://packagecontrol.io/packages/Pretty%20JSON)
  + [DocBlockr](https://packagecontrol.io/packages/DocBlockr)
  + [BracketHighlighter](https://packagecontrol.io/packages/BracketHighlighter)
  + [SublimeCodeIntel](https://packagecontrol.io/packages/SublimeCodeIntel)
  + [EditorConfig](https://github.com/sindresorhus/editorconfig-sublime#readme)

---
> **Instructor:** Break now for class exercise. Give the students a document of text with multiple paragraphs and start practicing the keyboard shortcuts. Share the link to the unofficial docs for [http://sublime-text-unofficial-documentation.readthedocs.org/en/latest/reference/keyboard_shortcuts_win.html](keyboard shortcuts).

> 1. Cmd+O
1. Cmd+K, B
1. Cmd+N
1. Cmd+S
1. Cmd+P
1. Shift+Arrows for selection
1. Copy, cut, paste
1. Undo, redo
1. Shift+Alt+Arrows for word selection
1. Ctrl+Cmd+Up/Down
1. Ctrl+Shift+K
1. Cmd+[]
1. Ctrl+Shift+Up/Down for mutiple cursors
1. Cmd+D
1. Cmd+F
1. Cmd+Shift+F
1. Ctrl+Cmd+G for selecting all occurances

---


## Google Chrome Dev Tools

The developer tools available in Chrome allow you modify your code, see errors, watch network traffic, find performance problems, and view detailed information about the documents that you are viewing.

### Writing JavaScript in the console

Show students some basic examples of how they can write JavaScript in the console and have it immediately executed by the browser.

 + `alert()`
 + `document.querySelector()`
 + `innerHTML()`

### Inspecting and modifying HTML

Show students how to inspect specific elements on a page, add attributes, and even delete them.

### Inspecting and modifying CSS

Show students how they can tweak the design of their webpages right in the browser, which they can then copy pasta back into their code.

### Network traffic

 + Show document list
 + Show request/response headers per request
 + Filtering requests by type
 + Large/small row types
 + Timeline overview

---
> **Instructor:** Break now for class exercise. Have the students load an HTML document that has several elements, and ask them to change the format, colors, and layout just by modifying the CSS in Chrome. Then have them modify the DOM in the console with some innerHTML commands, and deleting other DOM elements.

---

# Homework

## Preparation for JavaScript

1. Read chapters 1-9 of "**A smarter way to learn JavaScript**".
2. Do all of the interactive coding exercises for each chapter.
3. *Treehouse* > *JavaScript Basics Course*: Watch first two videos and do the review questions

---

# Want to learn more?

1. Have more than one file open at a time in SublimeText. Look in the View > Layout menu.
1. Create a [SublimeText snippet](http://docs.sublimetext.info/en/latest/extensibility/snippets.html) that allows you to type in `log`, which can then output `console.log('', )` and which lets you enter in a value inside the quotes, and then hit tab to enter a value after the comma. Try to create other snippets that make useful shortcuts for how you code.
1. Find out what the uses the most amount of browser memory for your favorite web site by using the [heap snapshot profile](https://developer.chrome.com/devtools/docs/heap-profiling) capability of Chrome.
1. Make changes to your source file directly in Chrome, using [workspaces](https://developer.chrome.com/devtools/docs/workspaces).
1. Download the [Firefox Developer Edition](https://developer.mozilla.org/en-US/Firefox/Developer_Edition) browser and check out some of the cool tools that Mozilla is providing to developers.
