return {
   'nvim-treesitter/nvim-treesitter', 
   lazy = false, 
   build = ':TSUpdate',
   config = function()
      local config = require('nvim-treesitter')
      config.setup({  
         ensure_installed = {"javascript", "python", "lua"},
         highlight = {enable = true},
         indent = {enable = true}
      })
   end
}
