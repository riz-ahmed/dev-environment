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
[packer.nvim]("https://github.com/wbthomason/packer.nvim"): nvim package manager, configured to display a pop-up window during startup and update
    - [nvim-lua/plenary.nvim]("https://github.com/nvim-lua/plenary.nvim"): contains lua funtions on which other plugins are have depencies on
    - [bluz71/vim-moonfly-colors]("https://github.com/bluz71/vim-moonfly-colors"): just a dark theme that I kind of liked
    - [christoomey/vim-tmux-navigator]("https://github.com/christoomey/vim-tmux-navigator"): TMUX navigtor which is also installed in TMUX to have a seemles navigation experience between NVIM and TMUX inside the terminal 
    - [szw/vim-maximizer]("https://github.com/szw/vim-maximizer"): panes maximizer for NVIM 
    - [tpope/vim-surround]("https://github.com/tpope/vim-surround"): plugin to surround quotations, brackets, braces etc .,
    - [vim-scripts/ReplaceWithRegister]("https://github.com/tpope/vim-scripts/ReplaceWithRegister"): 
    - [numToStr/Comment.nvim]("https://github.com/numToStr/Comment.nvim"): auto commenting in VIM
    - [nvim-tree/nvim-tree.lua]("https://github.com/nvim-tree/nvim-tree.lua"): VIM file explorer 
    - [nvim-lualine/lualine.nvim]("https://github.com/nvim-lualine/lualine.nvim"): Status line at the botton of the text editior 
    - [nvim-telescope/telescope.nvim]("https://github.com/nvim-telescope/telescope.nvim"): file finder in VIM using fzf fuzzy finder plugin
    - [windwp/nvim-autopairs]("https://github.com/windwp/nvim-autopairs"): auto-pairs quotes, brackets, braces

### zsh configuration
- I am using _starship_ terminal configuration to in the __.zshrc__ config
- just makes the terminal more colorful
- for terminal emulator I am using _iTrem2_ for mac

### TMUX configuration
- For Mac M1's ensure in the TMUX config .tmux.conf that __sh__ should be the default shell to be used. I have noticed that the TMUX plugin manager _tpm_ doesn't compile in the Mac's default __zsh__ shell
- The resize panes have been remapped to _j, k, l, h_ keys, this is done to have consistency with Nvim comfiguration
- [christoomey/vim-tmux-navigator]("https:github.com/christoomey/vim-tmux-navigator" ) is used to switch between TMUX panes; also allows to switch between TMUX panes as well as Nvim panes/buffers
- [tmux-plugins/tmux-resurrect]("https:github.com/tmux-plugins/tmux-resurrect"): for retaining the last saved configuration
- [tmux-plugins/tmux-continuum]("https:github.com/tmux-plugins/tmux-continuum"): for saving the last configuration automatically

