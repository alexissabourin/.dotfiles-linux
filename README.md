<h1 align="center">Alexis's development environment</h1>
<p align="center"><i>I use Arch (on WSL), btw</i></p>
<div align="center">
  <img alt="image" src="https://github.com/alexissabourin/.dotfiles/assets/155196582/79c74646-d050-418f-92e0-13eb9ad4c248" />
</div>

## OS

I run my host on Windows 11 to enjoy its ecosystem in my daily life, and Arch on WSL for my software development experience.

## Terminal

I use the Windows Terminal on Windows 11 with a [custom configuration](settings.json) to run my Arch distribution on WSL.

> [!NOTE]
> I symlink my Windows Terminal configuration file via PowerShell to have it version controlled.

```posh
New-Item -ItemType SymbolicLink -Path "C:\Users\<WIN-UNAME>\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Target "\\wsl$\Arch\home\<WSL-UNAME>\.dotfiles\.settings.json" -Force
```
## Shell

I use [zsh](https://github.com/zsh-users/zsh) as my main shell with [omz](https://github.com/ohmyzsh/ohmyzsh) for better defaults and management.

## Tools

### [bat](https://github.com/sharkdp/bat)

- Syntax highlighting
- Theming
- Integrates with
  - fzf

### [eza](https://github.com/eza-community/eza)

- Theming
- Icons
- Integrates with
  - fzf

### [fd](https://github.com/sharkdp/fd)

- Faster find
- Integrates with
  - fzf

### [fzf](https://github.com/junegunn/fzf)

- Fuzzy finder
- Integrates with
  - fd
  - bat
  - eza
  - zoxide

### [git](https://github.com/git/git)

- Integrates with
  - git-delta

### [git-delta](https://github.com/dandavison/delta)

- Syntax highlighting pager
- Prettier diffs/greps/blames
- Integrates with
  - git
 
### [mise](https://github.com/jdx/mise)

- Tools versions management

### [stow](https://github.com/aspiers/stow)

- Symlinks

### [tldr](https://github.com/tldr-pages/tldr)

- Tools summaries

### [tmux](https://github.com/tmux/tmux)

- Integrates with
  - tmuxp
  - tpm
 
### [tmuxp](https://github.com/tmux-python/tmuxp)

- Projects management
- Integrates with
  - tmux
 
### [tpm](https://github.com/tmux-plugins/tpm)

- Tmux plugins manager
- Theming
- Integrates with
  - tmux
 
### [zoxide](https://github.com/ajeetdsouza/zoxide)

- Better cd
- Integrates with
  - fzf

## Text editor

## Workflow

Typically, I only use my Arch distribution on WSL for software development purposes. For every projects that I work on in local, I will create a tmuxp layout that can be loaded manually at any time. This layout will open all the panes and windows necessary for the project and run initial commands if needed (z, docker, db, git, etc.) Mise will also be used for programming languages versioning and development environment variables.
