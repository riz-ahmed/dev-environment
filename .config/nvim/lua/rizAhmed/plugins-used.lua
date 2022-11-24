local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

local status, packer = pcall(require, 'packer')
if not status then 
    return
end

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- colorschemek
    use "lunarvim/darkplus.nvim"

    -- essential lua functions used by other nvim plugins
    use "nvim-lua/plenary.nvim"

    -- plugin to navigate between nvim and tmux easily
    use "christoomey/vim-tmux-navigator"

    -- plugin for resizing split windows easily using <Leader>sm
    use "szw/vim-maximizer"

    -- surrounding quotes, braces etc,.
    use "tpope/vim-surround"

    -- replacing copied items
    use "vim-scripts/ReplaceWithRegister"

    -- commenting using gc in normal and visual mode
    use "numToStr/Comment.nvim"

    -- file-explorer plugi
    use {"nvim-tree/nvim-tree.lua", requires={"nvim-tree/nvim-web-devicons"}, tag="nightly"}

    --status line
    use {'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt=true}
        }

    -- fuzzy finder to seach files and function definitions under cursor
    use {'nvim-telescope/telescope-fzf-native.nvim', run='make'}
    use {
        'nvim-telescope/telescope.nvim', tag='0.1.0',
        requires={{'BurntSushi/ripgrep', opt=true}}
    }

    -- autopairs quotes, braces etc.,
    use 'windwp/nvim-autopairs'

    -- vim plgin for viewing fuction definitaion in the tagbar
    use 'preservim/tagbar'

    -- treesitter for better syntax highlighting as well as language recognition
    use ({
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({with_sync=true})
            ts_update()
        end,
    })

    -- which key: to display a guide for keybidnig (is automatically displayed while a combinaiton fo kbd is typed)
    use {
        'folke/which-key.nvim',
        config = function()
            require("which-key").setup{
                -- leaving emtpy for default configuration
            }
        end
    }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
