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

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'Raimondi/delimitMate'
  use 'vim-airline/vim-airline'

  --  use 'olimorris/onedarkpro.nvim'
  use 'sainnhe/sonokai'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    }
  }

  use {
    'Pocco81/auto-save.nvim',
    config = function()
      require('auto-save').setup({})
    end
  }

  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)

