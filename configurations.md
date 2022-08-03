## App Configurations

These are app configurations for c2s2.

Add snippets in the **Light** sections to *~/.config/c2s2/light* and snippets in the **Dark** sections to *~/.config/c2s2/dark* for the command-line apps you have and use on your system.

*The snippets below include default theme recommendations. Please feel free to modify these to use any other theme supported by the app.*

***You can contribute snippets for apps that are not already listed here by adding them to the end of this page, updating the index, and submitting a pull request. Please feel free to use the online editor here on Codeberg to do so.***

## Table of contents

(In alphabetical order.)

- [Bat](#bat)
- [Delta](#delta)
- [Helix Editor](#helix-editor)

### Helix Editor

[Helix Editor](https://helix-editor.com/) is a modal command-line editor inspired by [Kakoune](http://kakoune.org/) that has multiple cursors, a select-then-affect model, [tree-sitter](https://tree-sitter.github.io/tree-sitter/) integration, and [language server](https://microsoft.github.io/language-server-protocol/) support.

**Light:**

```bash
# Helix Editor
sed -i 's/theme = ".*"/theme = "onelight"/' ${HOME}/.config/helix/config.toml
```

**Dark:**

```bash
# Helix Editor
sed -i 's/theme = ".*"/theme = "dracula"/' ${HOME}/.config/helix/config.toml
```

## Bat

[Bat](https://github.com/sharkdp/bat#readme) is a *cat(1)* clone with syntax highlighting and Git integration.

**Light:**

```bash
# Bat (also used by Delta, etc.)
export BAT_THEME='Monokai Extended Light'
```

**Dark:**

```bash
# Bat (also used by Delta, etc.)
export BAT_THEME='Dracula'
```

## Delta

[Delta](https://github.com/dandavison/delta#readme) is a syntax-highlighting pager for git, diff, and grep output.

👉 Uses [Bat’s settings](#bat).