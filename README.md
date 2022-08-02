# Console Colour Scheme Synchroniser (C2S2)

Console Colour Scheme Synchroniser (C2S2) is a configurable mechanism for synchronising the themes of command-line applications with GNOME system colour scheme changes.

[Why?](#why)

## System requirements

- GNOME 42+
- A colour scheme aware Terminal application like [Black Box](https://gitlab.gnome.org/raggesilver/blackbox#black-box)
- systemd

## Install

😇 [Download](https://codeberg.org/small-tech/c2s2/raw/branch/main/install) and run [this installation script.](https://codeberg.org/small-tech/c2s2/raw/branch/main/install) 

😈 Or, if you enjoy living dangerously, pipe it from here to your shell (ooh, naughty!)

__Using wget:__

```shell
wget -qO- https://codeberg.org/small-tech/c2s2/raw/branch/main/install | bash
```

__Using curl:__

```shell
curl -s https://codeberg.org/small-tech/c2s2/raw/branch/main/install | bash
```

## Use

The installer copies a couple of bash scripts (_c2s2-monitor_ and _c2s2-update) into your [~/.local/bin](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)_ folder and sets up a systemd service to run the monitoring script. When the monitoring script detects that the system colour scheme has changed, it calls the update script.

The installer also creates two configuration files (bash scripts) in the _~/.config/c2s2_  folder:

- light
- dark

By default, c2s2 will simply log colour scheme changes to the systemd journal (which you can view using the `journalctl c2s2` to make sure it’s working).

To configure c2s2, copy the configurations from here into them.

## Configurations

Add the **Light** snippets to *~/.config/c2s2/light* and the **Dark** snippets to *~/.config/c2s2/dark* from the configurations below for the command-line apps you use.

*The snippets below include default theme recommendations. Please feel free to modify these to use any other theme supported by the app.*

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

## Why?

The GNOME display environment[^1], since version 42, implements support for light and dark appearance styles (aka Colour Schemes).[^2]

![Screenshot of GNOME’s appearance settings showing light and dark style thumbnails with the currently-selected wallpapers for each](./images/gnome-appearance-settings.png)

With a GNOME extension like [Night Theme Switcher](), you can even automate the switch from light mode to dark mode based on time of day (or using an icon in the system bar).[^3]

![Screenshot of Night Theme Switcher settings](./images/night-theme-switcher.png)

Furthermore, newer Terminal applications like [Black Box](https://gitlab.gnome.org/raggesilver/blackbox#black-box) follow GNOME’s colour scheme and automatically switch between light and dark themes for the console and its content.

![Screenshot of Black Box terminal’s setting showing the light and dark theme tabs, with the former selected and showing thumbnail previews of the four included light themes](./images/black-box-settings.png)

This is all great and it means that you can, for example, have your computer switch automatically to dark mode at sunset and have your terminal adapt to it automatically.

![Screenshot of light and dark modes on Black Box terminal](./images/black-box.png)

The problem, however, is that very few command-line applications adhere to the terminal theme. So

[^1]: Used by operating systems like Ubuntu, Fedora, etc. (Linux is confusing like that.)
[^2]: [GNOME’s implementation of colour schemes is currently not holistic.](https://gitlab.gnome.org/GNOME/gnome-shell/-/issues/5545) Which is a nice way of saying it’s inconsistent and not very well supported by interfaces within GNOME shell itself. For example, if you want to create your own custom wallpapers for light and dark mode, you have to use [GNOME Tweaks](https://wiki.gnome.org/Apps/Tweaks).
[^3]: The ability to schedule colour scheme changes based on time of day, having colour scheme changes animate smoothly, and having an easy to reach control for changing the colour scheme manually – in other words, basically everything the Night Theme Switcher extension does – are features that should really be added to GNOME itself and presented with intelligent defaults (e.g., for sunset for switching to dark mode).