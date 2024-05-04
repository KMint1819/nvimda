<h1 align="center">nvimda</h1>
A nvim config for C++/Python/JS/React development derived from <a href="https://github.com/NvChad/NvChad/tree/v2.0">NvChad</a>

## LIST
- [ ] copy buffer

## How to install
- font
```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
unzip JetBrainsMono.zip -d JetBrainsMono/
mkdir -p /usr/share/fonts/truetype/
mv JetBrainsMono/*.ttf /usr/share/fonts/truetype/
fc-cache -f -v
```
then set the terminal font to JetBrainsMono 

- neovim >= 0.8
- To normal local:
    ```bash
    wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim.appimage
    chmod +x nvim.appimage
    mv nvim.appimage /usr/local/bin/nvim
    ```
- To docker/ssh: compile from source!
    > See prerequsites: https://github.com/neovim/neovim/blob/master/BUILD.md#build-prerequisites
    ```bash
    wget https://github.com/neovim/neovim/archive/refs/tags/v0.9.5.tar.gz
    tar -xzf v0.9.5.tar.gz -C /opt
    cd /opt/neovim-0.9.5
    make CMAKE_BUILD_TYPE=Release
    sudo make install
    ```

- Clone this repo
```bash
cd ~
git clone --recursive https://github.com/KMint1819/nvimda.git ~/.config/nvim --depth=1
```

- (optional) Alias `vim` to `nvim`
```bash
echo "alias vim=nvim" >> ~/.bashrc
```

- Run `vim`!
```bash
vim
```

Now you're good to go!!!

## Keyboard shortcuts:
- See [mappings.lua](./lua/core/mappings.lua)
 
## Plugins list

- Many beautiful themes, theme toggler by our [base46 plugin](https://github.com/NvChad/base46)
- Inbuilt terminal toggling & management with [Nvterm](https://github.com/NvChad/nvterm)
- Lightweight & performant ui plugin with [NvChad UI](https://github.com/NvChad/ui) It provides statusline modules, tabufline ( tabs + buffer manager) , beautiful cheatsheets, NvChad updater, hide & unhide terminal buffers, theme switcher and much more!
- File navigation with [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- Beautiful and configurable icons with [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- Git diffs and more with [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) 
- NeoVim Lsp configuration with [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) and [mason.nvim](https://github.com/williamboman/mason.nvim)
- Autocompletion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- File searching, previewing image and text files and more with [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).
- Syntax highlighting with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Autoclosing braces and html tags with [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- Indentlines with [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- Useful snippets with [friendly snippets](https://github.com/rafamadriz/friendly-snippets) + [LuaSnip](https://github.com/L3MON4D3/LuaSnip).
- Popup mappings keysheet [whichkey.nvim](https://github.com/folke/which-key.nvim)

## Theme Showcase

<details><summary> <b>Images (Click to expand!)</b></summary>

![4 themes](https://nvchad.com/screenshots/four_Themes.webp)
![radium 1](https://nvchad.com/screenshots/radium1.webp)
![radium 2](https://nvchad.com/screenshots/radium2.webp)
![radium 3](https://nvchad.com/screenshots/radium3.webp)


(Note: these are just 4-5 themes, NvChad has around 56 themes)
</details>

## UI related plugins used

<details><summary> <b>Images (Click to expand!)</b></summary>

<h3> Nvim-tree.lua </h3>

Fast file tree:

<kbd><img src="https://nvchad.com/features/nvimtree.webp"></kbd>

<h3> Telescope-nvim </h3>

A fuzzy file finder, picker, sorter, previewer and much more:

<kbd><img src="https://nvchad.com/features/telescope.webp"></kbd>

<h3> Our own statusline written from scratch  </h3>

[NvChad UI](https://github.com/NvChad/ui)

<kbd><img src="https://nvchad.com/features/statuslines.webp"></kbd>

<h3> Tabufline (our own pertab bufferline) </h3>

<kbd><img src="https://nvchad.com/features/tabufline.webp"></kbd>
- Here's a [video](https://www.youtube.com/watch?v=V_9iJ96U_k8&ab_channel=siduck) that showcases it.

<h3> NvCheatsheet ( our UI Plugin ) </h3>
<kbd> <img src="https://nvchad.com/features/nvcheatsheet.webp"/></kbd>

</details>

