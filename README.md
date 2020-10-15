# Suckless builds

My setup of [suckless](suckless.org) tools for (Arch) Linux environment.
Each suckless program is stored as a git submodule.
Selection of patches in `patches` directory, configs in `config` directory.
Features simple status bar for dwm and a custom homepage for surf.

![screen](https://github.com/maciejzj/suckless-builds/blob/master/screen.png?raw=true)

Works best with my accompanying [dotfiles](https://github.com/maciejzj/dotfiles).

## Prerequisites

Dependencies for suckless programs and minimal `xorg` runtime are stored in
`pkg-list.txt`.
To install packages with `pacman` run:

```
sed '/^#/d' pkg-list.txt | pacman -S --needed -
```

Package list assumes you have base developer tools installed.
Dockerfile contains more explicit list of packages needed for build step.
If you want to use my dwm bar remember to run `sensors-detect` before.
List of other packages that I use (which are not suckless related) can be found
in my [dotfiles](https://github.com/maciejzj/dotfiles).

## How to build

Apply my selection of patches and copy configs.
Patching can be done like:

```
cd dwm && patch < ../patches/dwm-...
```

Using gathered patches in alphabetical order should succeed
(with one minor exception in `config.def.h` for surf's web search which doesn't
matter since proper `config.h` is supplied).
Copy configs like:

```
cd dwm && cp ../configs/dwm/config.h .
```

Then build and install in a standard way:

```
cd dwm && make && sudo make install
```

## Other

To use my dwm status bar install it with `sudo install dwmbar /usr/local/bin`.
Then place `dwmbar&` in `.xinitrc`.

Surf looks for homepage inside `~/.surf/homepage.html`.

## Theming

St has [base16 brewer color scheme](https://github.com/chriskempson/base16-unclaimed-schemes/blob/master/brewer.yaml)
applied.
Matching gtk2 and gtk3 theme is
[mantis](https://github.com/mantissa-/mantis-theme).
Follow instructions on theme's page and apply it with `lxappearance`.
