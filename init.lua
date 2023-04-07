local core_conf_files = {
  'packer.lua',
  'coc.lua',
  'base.lua'
}

for _, name in ipairs(core_conf_files) do
  local path = string.format("%s/base-config/%s", vim.fn.stdpath("config"), name)
  local source_cmd = "source " .. path
  vim.cmd(source_cmd)
end

require('nvim-web-devicons').setup {
  color_icons = true;
  default = true;
}

require('nvim-tree').setup()

-- vim.cmd([[colorscheme onedarkpro]])

local nvimtree = require('nvim-tree.api')
vim.keymap.set('n', '<F8>', nvimtree.tree.toggle)

vim.diagnostic.config({
  virtual_text = true,
  virtualTextCurrentLineOnly = false
})

