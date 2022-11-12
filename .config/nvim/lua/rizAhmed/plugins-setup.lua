local ensure_packer = function()
  local fn = vim.fn
  local nstall_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerCompile
  augroup end
]])

-- import packer
local status, packer = pcall(require, "packer")
if not status then
    print("packer import failed!")
    return
end

return packer.startup(function(use)

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
    prompt_border = "rounded", -- Border style of prompt popups.
  },
}

-- all plugins should be bootstraped from here:
-- necessary packages
  use 'wbthomason/packer.nvim' -- default packer manager

  -- lua functions that many plugins use
  use "nvim-lua/plenary.nvim"

  -- colorschemes
use 'bluz71/vim-moonfly-colors'

  -- plugin for split windows navigation
  use "christoomey/vim-tmux-navigator"

  -- plugin for re-sizing split windows
  use "szw/vim-maximizer"

  -- essential plugins for editing
  use "tpope/vim-surround" -- for surrounding text with selected characters
  use "vim-scripts/ReplaceWithRegister"

  -- commenting in gc
  use "numToStr/Comment.nvim"

  -- file-explorer plugin
  use {"nvim-tree/nvim-tree.lua", requires={"nvim-tree/nvim-web-devicons"}, tag="nightly"}
  -- end of plugins bootstrap
  -- 
  -- lualine plugin
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
  -- fuzzy finder plugin to search for files and texts within the files
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- telescope requires this plugin to work properly
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'BurntSushi/ripgrep', opt = true} }
      }

  -- nvim autopairs plugin for autocompleting the brackets and quotations
 use "windwp/nvim-autopairs" 

  -- vim plugin for viewing tags such as functions and methods of a class
  use "https://github.com/preservim/tagbar"

  -- according to the documenation, this should be put in the end
  if packer_bootstrap then
    require('packer').sync()
  end
end)
