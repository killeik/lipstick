# Console Colour Scheme Synchroniser (C2S2)

## 🚧 Work in progress, please do not use yet.

Makes command-line apps adhere to your light/dark mode settings.

Configurable and extensible.

[Learn more.](https://ar.al/2022/08/03/the-most-important-lesson-in-design/)

## System requirements

- GNOME 42+
- A colour scheme aware Terminal application like [Black Box](https://gitlab.gnome.org/raggesilver/blackbox#black-box)
- systemd

## 1. Install

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

## 2. Configure

When c2s2 detects a change in the system colour scheme, it runs the corresponding configuration script at:

- __Light mode:__ _~/.config/c2s2/light_
- __Dark mode:__ _~/.config/c2s2/dark_

You configure c2s2 by adding [app configurations](./configurations.md) (little snippets of shell code) to these two scripts.

[Configure your c2s2 now.](./configurations.md)

> 💡 The default light and dark mode scripts do not contain any app configurations and will simply log colour scheme changes to the systemd journal (which you can view using the `journalctl c2s2` to make sure c2s2 is working).

## 3. Enjoy!

Once you’ve [configured c2s2](./configurations.md) to support the command-line apps on your system, it will automatically update them to use the correct theme when the system colour scheme changes.

Some apps (e.g., [Helix Editor](https://helix-editor.com)), may [need to be restarted](https://github.com/helix-editor/helix/issues/2158#issuecomment-1201083242) for the changes to take effect.

Before visually verifying it by running your command-line apps, you can check that c2s2 is working by running `journalctl --unit c2s2` and toggling your system from light to dark mode and back. Unless you’ve removed the log statements in the default light and dark configuration files, you should see c2s2 log the colour scheme changes.

## Contribute

You can contribute snippets for apps that are not already listed here by adding them to the end of the [app configurations](./configurations.md) page, updating [the table of contents](./configurations.md#table-of-contents) there, and submitting a pull request. Please feel free to use the online editor here on Codeberg to do so.

## Like this? Fund us!

[Small Technology Foundation](https://small-tech.org) is a tiny, independent not-for-profit.

We exist in part thanks to patronage by people like you. If you share [our vision](https://small-tech.org/about/#small-technology) and want to support our work, please [become a patron or donate to us](https://small-tech.org/fund-us) today and help us continue to exist.

## Copyright

&copy; 2022-present [Aral Balkan](https://ar.al), [Small Technology Foundation](https://small-tech.org).
