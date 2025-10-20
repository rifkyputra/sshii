# sshii

A small repository that contains an executable named `sshii` and a `Makefile` to install it into your user local bin directory.

This README was generated from the repository layout and the `Makefile` targets. I inferred the role of the `sshii` file as a small CLI executable — run `sshii --help` after installing to see available options.

## Installation

The repository includes a `Makefile` that installs the `sshii` executable into `$(HOME)/.local/bin` by default.

Install using make:

```zsh
make install
```

This will:

- create `$(HOME)/.local/bin` if it doesn't exist
- copy the `sshii` file to `$(HOME)/.local/bin/sshii`
- make it executable

To uninstall:

```zsh
make uninstall
```

The `Makefile` also defines a `build` target which currently delegates to `install`.

## Usage

After installation, ensure `$(HOME)/.local/bin` is in your `PATH`. You can add this to your `~/.zshrc`:

```zsh
export PATH="$HOME/.local/bin:$PATH"
```

Then run:

```zsh
sshii --help
# or simply
sshii
```

If `sshii` is a script that requires additional setup (config files, environment variables, etc.), consult any project-specific docs or check the script header/comments.

## Development

To reinstall while developing, run:

```zsh
make install
```

Edit the `sshii` source file in-place and re-run `make install` to update the installed binary.

## Files of interest

- `Makefile` — install and uninstall targets that copy `sshii` to `~/.local/bin`
- `sshii` — executable script/binary (installed by the Makefile)

## License

This project is licensed under the MIT License — see the `LICENSE` file for details.

Copyright (c) 2025 Rifky Putra

