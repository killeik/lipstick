# 🐷 Lipstick on a Pig

Lipstick makes command-line apps follow your light/dark mode settings.

[Learn more.](https://ar.al/2022/08/17/the-most-important-lesson-in-design/)

## System requirements

- GNOME 42+
- A colour scheme aware Terminal application like [Black Box](https://gitlab.gnome.org/raggesilver/blackbox#black-box)
- systemd

## Supported apps

- [Bat](https://github.com/sharkdp/bat#readme)
- [Delta](https://github.com/dandavison/delta#readme)
- [Helix](https://helix-editor.com)

Got an app you use that isn’t supported? Why not add it to the [lipstick-apps](src/lipstick-apps) file and submit a pull request?

## Install

Here are three ways you can install Lipstick on a Pig:

😇 [Download and run this installation script.](https://codeberg.org/small-tech/lipstick/raw/branch/main/dist/install) 

🤓 Clone this repository and run the `./install` script.

😈 Or, if you enjoy living dangerously, copy and paste one of the following commands into your terminal and run it (ooh, naughty!)

__Using wget:__

```shell
wget -qO- https://codeberg.org/small-tech/lipstick/raw/branch/main/dist/install | bash
```

__Using curl:__

```shell
curl -s https://codeberg.org/small-tech/lipstick/raw/branch/main/dist/install | bash
```

Lipstick will automatically find [supported apps](#supported-apps) on your system and configure itself. You shouldn’t have to do anything else.

## Notes

### Refreshing running apps

Some apps (e.g., [Helix Editor](https://helix-editor.com)), may [need to be restarted](https://github.com/helix-editor/helix/issues/2158#issuecomment-1201083242) for the changes to take effect.

### Fedora Silverblue

Please either install Lipstick from the host system or from a [toolbox](https://docs.fedoraproject.org/en-US/fedora-silverblue/toolbox/) container.

(Distrobox currently doesn’t work with systemd `--user` services in either [initful](https://github.com/89luca89/distrobox/issues/380) or [initless](https://github.com/89luca89/distrobox/issues/379#issuecomment-1217864773) containers and the installer will fail under a Distrobox container.)

## Like this? Fund us!

[Small Technology Foundation](https://small-tech.org) is a tiny, independent not-for-profit.

We exist in part thanks to patronage by people like you. If you share [our vision](https://small-tech.org/about/#small-technology) and want to support our work, please [become a patron or donate to us](https://small-tech.org/fund-us) today and help us continue to exist.

## Copyright

&copy; 2022-present [Aral Balkan](https://ar.al), [Small Technology Foundation](https://small-tech.org).
