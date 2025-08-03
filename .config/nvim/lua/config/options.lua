-- Using vim.o instead of vim.opt since vim.opt will be deprecated in a future release https://github.com/neovim/neovim/issues/20107
vim.o.clipboard = 'unnamedplus' -- Allows NVim to access the system clipboard
vim.o.number = true             -- Enables line numbers
vim.o.relativenumber = true    -- Enables relative line numbers

vim.o.smartcase = true          -- Enables smart case i.e. Search becomes case sensitive if search term contains an upper case letter
vim.o.ignorecase = true         -- Search ignores case
vim.o.smartindent = true -- idk
vim.o.expandtab = true          -- Converts tabs to spaces
vim.o.shiftwidth = 4            -- Sets indent width to 4 spaces
vim.o.tabstop = 4               -- Sets tab indent width to 4 chars
vim.o.signcolumn = 'yes'        -- Always display the sign columns (Used to display warning/error icons)

vim.o.splitbelow = true         -- Forces horizontal splits to go below the current window
vim.o.splitright = true         -- Forces vertical splits to go to the right of the current window

vim.o.cursorline = true         -- Highlights the current line

vim.g.have_nerd_font = true

-- Highlighting when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying text)',
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

-- Show inline diagnostics
vim.diagnostic.config({
    virtual_text = { current_line = true }
})
