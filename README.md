My development environment (no IDE)
- for C, C++ as well as Embedded Systems development

## Tools and configuration
- I am using Nvim Text based editor: I chose Nvim over Vim though as it has better community support (its highly likely that a new feature would come up earlier in Nvim), its seemingly faster as well as easier to configure with Lua in comparision
- Nvin was brew installed on mac

```
brew install neovim
```
---

### Nvim configuration

- the follwing plugins are installed:
    - [packer.nvim](https://github.com/wbthomason/packer.nvim): nvim package manager, configured to display a pop-up window during startup and update
    - [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim): contains lua funtions on which other plugins are have depencies on
    - [lunarvim/darkplus.nvim](https://github.com/lunarvim/darkplus.nvim): just a dark theme that I kind of liked
    - [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator): TMUX navigtor which is also installed in TMUX to have a seemles navigation experience between NVIM and TMUX inside the terminal 
    - [szw/vim-maximizer](https://github.com/szw/vim-maximizer): panes maximizer for NVIM 
    - [tpope/vim-surround](https://github.com/tpope/vim-surround): plugin to surround quotations, brackets, braces etc .,
    - [vim-scripts/ReplaceWithRegister](https://github.com/tpope/vim-scripts/ReplaceWithRegister): replaces words with the values from the registers
    - [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim): auto commenting in VIM
    - [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua): VIM file explorer 
    - [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim): Status line at the botton of the text editior 
    - [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): file finder in VIM using fzf fuzzy finder plugin
    - [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs): auto-pairs quotes, brackets, braces
    - [presservim/tagbar](https://github.com/presservim/tagbar): Tagbar for code navigation (functions and methods listing) 
    - [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Treesitter for better syntax highlighting and recognition
    - [folke/which-key.nvim](https://github.com/folke/which-key.nvim): displays tipps for the keys pressed - helps in memorising the new key bindings
---

### zsh configuration
- I am using [starship](https://starships.rs/guide/) terminal configuration to in the __.zshrc__ config
- just makes the terminal more colorful
- for terminal emulator I am using __iTrem2__ for mac
- fonts used in iTerm2: [Ubuntu Mono Nerd Fonts](https://github.com/https://gist.github.com/davidteren/898f2dcccd42d9f8680ec69a3a5d350e)
```
brew install --cask iterm2
```
---

### TMUX configuration
- For Mac M1's ensure in the TMUX config .tmux.conf that __sh__ should be the default shell to be used. I have noticed that the TMUX plugin manager _tpm_ doesn't compile in the Mac's default __zsh__ shell
- The resize panes have been remapped to _j, k, l, h_ keys, this is done to have consistency with Nvim comfiguration
- [christoomey/vim-tmux-navigator](https:github.com/christoomey/vim-tmux-navigator ) is used to switch between TMUX panes; also allows to switch between TMUX panes as well as Nvim panes/buffers
- [tmux-plugins/tmux-resurrect](https:github.com/tmux-plugins/tmux-resurrect): for retaining the last saved configuration
- [tmux-plugins/tmux-continuum](https:github.com/tmux-plugins/tmux-continuum): for saving the last configuration automatically

---

### GCC cross compiler toolchain for ARM
- [arm-none-eabi-gcc](https://mynewt.apache.org/v1_5_0/get_started/native_install/cross_tools.html) - this page provides a detailed list of installing the **arm-none-eabi-gcc** compiler toolchain as well as **openocd** for cross-platform debugging

### GNU Make
- Makefiles are used to automate the GNU Build Process for cross compilation
- installing Make on Mac
```
brew install make
```
