# ⚙️ My Dotfiles


---

## 📂 Repository Structure

| Directory | Description |
|-----------|-------------|
| [`bash/`](./bash) | Bash configuration and shell customization |
| [`bin/`](./bin) | Personal utility scripts and executables |
| [`btop/`](./btop) | btop system monitor configuration |
| [`clang/`](./clang) | Clang / formatting configuration |
| [`fastfetch/`](./fastfetch) | Fastfetch configuration |
| [`ghostty/`](./ghostty) | Ghostty terminal configuration |
| [`lazygit/`](./lazygit) | Lazygit configuration |
| [`learn-tool/`](./learn-tool) | Learning resources and helper scripts |
| [`niri/`](./niri) | Niri Wayland compositor configuration |
| [`nvim/`](./nvim) | Neovim (LazyVim) configuration |
| [`swaylock/`](./swaylock) | Swaylock configuration |
| [`tmux/`](./tmux) | tmux configuration |
| [`waybar/`](./waybar) | Waybar configuration |
| [`yazi/`](./yazi) | Yazi file manager configuration |

---

# 🚀 Quick Navigation

- [bash](./bash)
- [bin](./bin)
- [btop](./btop)
- [clang](./clang)
- [fastfetch](./fastfetch)
- [ghostty](./ghostty)
- [lazygit](./lazygit)
- [learn-tool](./learn-tool)
- [niri](./niri)
- [nvim](./nvim)
- [swaylock](./swaylock)
- [tmux](./tmux)
- [waybar](./waybar)
- [yazi](./yazi)

---

# 🖥️ Environment

| Component | Details |
|----------|---------|
| OS | Linux |
| Shell | Bash,Fish |
| Terminal | Ghostty |
| Editor | Neovim (LazyVim), Neovide |
| Window Manager | Niri |
| Status Bar | Waybar |
| File Manager | Yazi |
| Git UI | Lazygit |


---

# 🛠️ Tools & Applications

These are the tools that make up my daily development workflow.

## 💻 Terminal Utilities

| Tool | Purpose |
|------|---------|
| **eza** | Modern replacement for `ls` with icons, Git integration, and better file listings. |
| **zoxide** | Smarter replacement for `cd` that jumps to frequently visited directories. |
| **fzf** | Command-line fuzzy finder for files, directories, command history, Git, and more. |
| **bat** | Better `cat` with syntax highlighting, Git integration, and line numbers. |
| **fd** | User-friendly and significantly faster alternative to `find`. |
| **duf** | Modern replacement for `df` with a cleaner disk usage interface. |
| **btop** | Interactive system monitor for CPU, memory, disks, processes, and network. |
| **fastfetch** | Displays system information in a clean and customizable format. |
| **jolt** | Terminal utility for viewing battery information. |
| **lazyjournal** | Convenient terminal viewer for systemd journal logs. |
| **chafa** | Render images directly inside the terminal. |

---

## 🖥️ Shell & Terminal Workflow

| Tool | Purpose |
|------|---------|
| **Fish** | Interactive shell with autosuggestions and syntax highlighting. |
| **Starship** | Cross-shell customizable prompt. |
| **tmux** | Terminal multiplexer for managing multiple sessions and panes. |
| **Ghostty** | Modern GPU-accelerated terminal emulator. |

---

## ✍️ Development Tools

| Tool | Purpose |
|------|---------|
| **Neovim** | Primary code editor powered by LazyVim. |
| **Neovide** | Graphical frontend for Neovim. |
| **Lazygit** | Terminal UI for Git operations. |
| **Yazi** | Fast terminal file manager with preview support. |

---

## 🌐 Desktop Applications

| Application | Purpose |
|-------------|---------|
| **Zen Browser** | Primary web browser. |
| **FreeTube** | Privacy-focused YouTube desktop client. |
| **Bluejay** | Lightweight Bluetooth manager. |
| **Swifty Notes** | Simple note-taking application. |

---

# 📦 Package Managers

I use multiple package managers depending on the software source.

| Package Manager | Usage |
|----------------|-------|
| **Homebrew** | CLI utilities and developer tools. |
| **Flatpak** | Desktop applications. |
| **npm** | JavaScript tooling and global CLI packages. |
| **distro based package manager** | apt, dnf, packman, yay, yum etc.|

---

# 🖥️ Desktop Environment

My desktop is based on **Niri**, a scrollable Wayland compositor.

### Core Components

| Component | Purpose |
|----------|---------|
| **Niri** | Wayland compositor |
| **Waybar** | Status bar |
| **Fuzzel** | Application launcher |
| **Swaylock** | Screen locker |
| **Swaybg** | Wallpaper manager |


---

# ❤️ Favorite CLI Stack

- Fish
- Ghostty
- Starship
- tmux
- Neovim
- Lazygit
- Yazi
- eza
- bat
- fd
- fzf
- zoxide
- btop



---

# ✨ Highlights

- Modular directory structure
- Wayland-based desktop setup
- Neovim powered by LazyVim
- Custom Ghostty terminal configuration
- Niri compositor configuration
- Waybar customization
- tmux workflow
- Yazi file manager configuration
- Fastfetch customization
- Personal shell scripts

---

# 📦 Installation

Clone the repository:

```bash
git clone https://github.com/<your-username>/.dotfiles.git ~/.dotfiles
```

Create symbolic links as needed.

Example:

```bash
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/ghostty ~/.config/ghostty
ln -s ~/.dotfiles/waybar ~/.config/waybar
```

---

# 🎯 Goals

- Keep configuration version controlled.
- Make reinstalling Linux quick.
- Maintain a clean and organized development environment.
- Experiment with new tools without losing previous configurations.

---

# 📜 License

This repository is intended for personal use. Feel free to explore, learn from it, or adapt parts of it for your own setup.