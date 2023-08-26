# neovim-config
My own NeoVim config (incompatible with the original vim)

## Deps
- clang and clangd (for C++)
- [golang](https://go.dev/) and [gopls](https://github.com/golang/tools/blob/master/gopls/README.md) (for golang)
- [git](https://git-scm.com/) (necessary)
- [nerdfonts](https://nerdfonts.com) (only for some icons in folder tree, not neccessary)
- nodejs (necessary)

## Installation guide
- clone repo
  ```
  git clone https://github.com/Korisss/neovim-config ~/.config/nvim
  ```
- you also need to install dependencies
  - golang, git, node js, clang and clangd will be in your distro repositories
  - gopls
    ```
    go install golang.org/x/tools/gopls@latest
    ```
    it also needs to be added to the PATH via .bashrc, .zshrc or .profile
    ```
    export PATH="$HOME/go/bin/:$PATH"
    ```
  - additional coc language servers
    ```
    :CocInstall coc-json coc-tsserver coc-css coc-html coc-markdownlint
    ```
