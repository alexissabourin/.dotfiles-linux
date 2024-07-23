<h1 align="center">Alexis's Linux environment</h1>

<p align="center"><i>I use Arch (on WSL), btw</i></p>

<div align="center">
  <img alt="image" src="https://github.com/alexissabourin/.dotfiles/assets/155196582/79c74646-d050-418f-92e0-13eb9ad4c248" />
</div>

## Shell/tooling

I use [zsh](https://github.com/zsh-users/zsh) as my main shell with [omz](https://github.com/ohmyzsh/ohmyzsh) for better defaults and plugin management.

| Tools |
| :---: |
| [bat](https://github.com/sharkdp/bat) |
| [eza](https://github.com/eza-community/eza) |
| [fd](https://github.com/sharkdp/fd) |
| [fzf](https://github.com/junegunn/fzf) |
| [git](https://github.com/git/git) |
| [delta](https://github.com/dandavison/delta) |
| [mise](https://github.com/jdx/mise) |
| [tldr](https://github.com/tldr-pages/tldr) |
| [zoxide](https://github.com/ajeetdsouza/zoxide) |
| [xclip](https://github.com/astrand/xclip) |

## Multiplexing

I use [tmux](https://github.com/tmux/tmux) with [tmuxp](https://github.com/tmux-python/tmuxp) for projects layouts and [tpm](https://github.com/tmux-plugins/tpm) for plugin management.

> [!NOTE]
> I do also have a `.tmuxp` folder, but it is omitted here, you should bring your own for a similar development experience.

## Text editor

I use [neovim](https://github.com/neovim/neovim) with a custom configuration *(greatly inspired by this [blog post](https://www.josean.com/posts/how-to-setup-neovim-2024))* and [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management.

## Stowing

I use [stow](https://github.com/aspiers/stow) to symlink my dotfiles. I usually use the `stow .` command at the roots of this repository, the `.config` folder and the omitted `.tmuxp` folder.

## SSH

I mainly use [openssh](https://github.com/openssh/openssh-portable) to handle my keys. This [script](/.scripts/load_ssh_agent.sh) is used to load my git ssh agent on system startup.

> [!NOTE]
> My keys have been omitted from this repository for obvious reasons, you will need to bring your own.

## Vale

This [configuration file](/.config/vale/.vale.ini) is exclusively used for markdown files linting in neovim. 

> [!IMPORTANT]
> For it to be functional, you will need to generate its associated `styles` folder, follow this [blog](https://docs.rockylinux.org/fr/books/nvchad/vale_nvchad/) for further explanations.

## Package managers

| Manager |
| :---: |
| [luarocks](https://github.com/luarocks/luarocks) |
| [npm](https://github.com/npm/cli) |
