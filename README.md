# sshii

A small repository that contains `sshii` script. manage your ssh config with ease.

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

## Running inside vs outside a Git repository

The `sshii` script can be used both from inside a Git repository and from any other directory. Behavior differs slightly:

### Inside a Git repository:

The script will allow you to select an SSH private key or an SSH config Host and will set the repository-local Git configuration `core.sshCommand` to use the selected key (so Git operations from that repo will use the chosen key).
  
The `--unset` option will unset `core.sshCommand` for the repo.

### Outside a Git repository:

The script will still list SSH keys and allow selection, and will perform agent-related actions (like clearing identities) as requested.

The script will not attempt to modify any Git configuration. `--unset` will print a message explaining it cannot unset `core.sshCommand` because you are not in a repository.

This makes `sshii` safe to run for inspecting keys or editing your `~/.ssh/config` even when you're not working inside a Git project.

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

