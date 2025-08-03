return {
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd.colorscheme 'tokyonight-night'

            local lineColor = "#7b82a1"
            vim.api.nvim_set_hl(0, "LineNr", { fg = lineColor })
            vim.api.nvim_set_hl(0, "LineNrAbove", { fg = lineColor })
            vim.api.nvim_set_hl(0, "LineNrBelow", { fg = lineColor })
        end
    }
}
