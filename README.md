# 🐷 Lipstick on a Pig

## 🚧 Work in progress, please do not use yet.

Lipstick makes command-line apps follow your light/dark mode settings.

[Learn more.](https://ar.al/2022/08/03/the-most-important-lesson-in-design/)

## System requirements

- GNOME 42+
- A colour scheme aware Terminal application like [Black Box](https://gitlab.gnome.org/raggesilver/blackbox#black-box)
- systemd

## Supported apps

- [Bat]()
- [Delta]()
- [Helix]()

## Install

😇 [Download and run this installation script.](https://codeberg.org/small-tech/lipstick/raw/branch/main/install) 

😈 Or, if you enjoy living dangerously, pipe it from here to your shell (ooh, naughty!)

__Using wget:__

```shell
wget -qO- https://codeberg.org/small-tech/lipstick/raw/branch/main/install | bash
```

__Using curl:__

```shell
curl -s https://codeberg.org/small-tech/lipstick/raw/branch/main/install | bash
```

Lipstick will automatically find supported apps on your system and configure itself. You shouldn’t have to do anything else.

## Notes

Some apps (e.g., [Helix Editor](https://helix-editor.com)), may [need to be restarted](https://github.com/helix-editor/helix/issues/2158#issuecomment-1201083242) for the changes to take effect.

## Contribute

To contribute app settings for other apps, please edit the [lipstick-apps](scripts/lipstick-apps) file and submit a pull request.

## Like this? Fund us!

[Small Technology Foundation](https://small-tech.org) is a tiny, independent not-for-profit.

We exist in part thanks to patronage by people like you. If you share [our vision](https://small-tech.org/about/#small-technology) and want to support our work, please [become a patron or donate to us](https://small-tech.org/fund-us) today and help us continue to exist.

## Copyright

&copy; 2022-present [Aral Balkan](https://ar.al), [Small Technology Foundation](https://small-tech.org).
