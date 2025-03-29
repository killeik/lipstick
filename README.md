This is fork of https://codeberg.org/small-tech/lipstick to add some changes I want to use.
# 🐷 Lipstick on a Pig

Lipstick makes command-line apps follow your light/dark mode settings.

[Learn more.](https://ar.al/2022/08/17/lipstick-on-a-pig/)

## System requirements

- GNOME 42+
- A colour scheme aware Terminal application like [Black Box](https://gitlab.gnome.org/raggesilver/blackbox#black-box) or [Ghostty](https://ghostty.org/)
- systemd

## Supported apps

- [Bat](https://github.com/sharkdp/bat#readme)
- [Btop](https://github.com/aristocratos/btop)
- [Delta](https://github.com/dandavison/delta#readme)
- [Helix](https://helix-editor.com)

> __💡 Got an app you use that isn’t supported?__
>
> Add it to the [lipstick-apps](src/lipstick-apps) file and [submit a pull request](https://github.com/killeik/lipstick/pulls).

## Install

Here are three ways you can install Lipstick on a Pig:

😇 [Download and run this installation script.](https://raw.githubusercontent.com/killeik/lipstick/refs/heads/main/dist/install) 

🤓 Clone this repository and run the `./install` script.

😈 Or, if you enjoy living dangerously, copy and paste one of the following commands into your terminal and run it (ooh, naughty!)

__Using wget:__

```shell
wget -qO- https://raw.githubusercontent.com/killeik/lipstick/refs/heads/main/dist/install | bash
```

__Using curl:__

```shell
curl -s https://raw.githubusercontent.com/killeik/lipstick/refs/heads/main/dist/install | bash
```

Lipstick will automatically find [supported apps](#supported-apps) on your system and configure itself. You shouldn’t have to do anything else.

## Notes

### Overrided Light and Dark Themes
Each application supported by Lipstick can have its default light and dark themes overridden by entries in the `~/.config/lipstick/lipstick.conf` file. The following example file is the equivalent of the Lipstick default themes:

```shell
batcat_dark_theme=Dracula
batcat_light_theme=Monokai Extended Light
bat_dark_theme=Dracula
bat_light_theme=Monokai Extended Light
btop_dark_theme=dracula
btop_light_theme=adapta
delta_dark_theme=Dracula
delta_light_theme=Monokai Extended Light
helix_dark_theme=dracula
helix_light_theme=onelight
```

### Refreshing running apps

Some apps may need to be restarted for the changes to take effect.

Whenever possible, Lipstick should attempt to signal to the app that its configuration has changed so it can reload it. This is what it does for Helix Editor, for example.

### Fedora Silverblue

Please either install Lipstick from the host system or from a [toolbox](https://docs.fedoraproject.org/en-US/fedora-silverblue/toolbox/) container.

(Distrobox currently doesn’t work with systemd `--user` services in either [initful](https://github.com/89luca89/distrobox/issues/380) or [initless](https://github.com/89luca89/distrobox/issues/379#issuecomment-1217864773) containers and the installer will fail under a Distrobox container.)

## Like this? Fund us!

[Small Technology Foundation](https://small-tech.org) is a tiny, independent not-for-profit.

We exist in part thanks to patronage by people like you. If you share [our vision](https://small-tech.org/about/#small-technology) and want to support our work, please [become a patron or donate to us](https://small-tech.org/fund-us) today and help us continue to exist.

## Copyright

&copy; 2022-present [Aral Balkan](https://ar.al), [Small Technology Foundation](https://small-tech.org).
