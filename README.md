# Console Colour Scheme Synchroniser (C2S2)



## 🚧 Work in progress, please do not use yet.



Console Colour Scheme Synchroniser (C2S2) is a configurable mechanism for synchronising the themes of command-line applications with GNOME system colour scheme changes.

[Learn more.](https://ar.al/2022/08/03/the-most-important-lesson-in-design/)

## System requirements

- GNOME 42+
- A colour scheme aware Terminal application like [Black Box](https://gitlab.gnome.org/raggesilver/blackbox#black-box)
- systemd

## Install

😇 [Download and run this installation script.](https://codeberg.org/small-tech/c2s2/raw/branch/main/install) 

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

The c2s2 installer sets up and starts a systemd service that runs the c2s2 monitoring script. When the monitoring script detects that the system colour scheme has changed, it runs the c2s2 update script which, in turn, runs either the light mode or dark mode script in your c2s2 configuration directory.

Find the light and dark mode configuration scripts at:

- _~/.config/c2s2/light_
- _~/.config/c2s2/dark_

You configure c2s2 by adding [app configurations](./configurations.md) (little snippets of shell code) to these two scripts.

> 💡 The default light and dark mode scripts do not contain any app configurations and will simply log colour scheme changes to the systemd journal (which you can view using the `journalctl c2s2` to make sure c2s2 is working).

## Contribute

You can contribute snippets for apps that are not already listed here by adding them to the end of the [app configurations](./configurations.md) page, updating [the table of contents](./configurations.md#table-of-contents) there, and submitting a pull request. Please feel free to use the online editor here on Codeberg to do so.

## Like this? Fund us!

[Small Technology Foundation](https://small-tech.org) is a tiny, independent not-for-profit.

We exist in part thanks to patronage by people like you. If you share [our vision](https://small-tech.org/about/#small-technology) and want to support our work, please [become a patron or donate to us](https://small-tech.org/fund-us) today and help us continue to exist.

## Copyright

&copy; 2022-present [Aral Balkan](https://ar.al), [Small Technology Foundation](https://small-tech.org).
