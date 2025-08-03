return {
    {
        'echasnovski/mini.nvim',
        version = '*',
        config = function()
            require('mini.surround').setup()
            require('mini.pairs').setup()

            local statusline = require 'mini.statusline'
            statusline.setup { use_icons = vim.g.have_nerd_font }
        end
    }
}
