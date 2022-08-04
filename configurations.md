## App Configurations

These are app configurations for c2s2.

For the apps you have on your system, copy and paste the corresponding snippets in the

- **Light** sections to *~/.config/c2s2/light* 
- **Dark** sections to *~/.config/c2s2/dark*

*The snippets below include purely subjective default theme recommendations. Please feel free to modify these to use any other theme supported by the app. Also note that the snippets use default configuration paths. If the configuration file(s) for your apps are not in the default locations, update the snippets accordingly.*

## Contributing

You can contribute snippets for apps that are not already listed here by adding them to the end of this page, updating the index, and submitting a pull request. Please feel free to use the online editor here on Codeberg to do so.

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

## Like this? Fund us!

[Small Technology Foundation](https://small-tech.org) is a tiny, independent not-for-profit.

We exist in part thanks to patronage by people like you. If you share [our vision](https://small-tech.org/about/#small-technology) and want to support our work, please [become a patron or donate to us](https://small-tech.org/fund-us) today and help us continue to exist.

## Copyright

&copy; 2022-present [Aral Balkan](https://ar.al), [Small Technology Foundation](https://small-tech.org).