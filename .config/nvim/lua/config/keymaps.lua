-- TODO: Figure out what silent actually does. I've seen this in a couple of other configs before
-- local keymapOpts = { silent = true }
local keymapOpts = {}

vim.keymap.set('n', ' ', '<Nop>', keymapOpts)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Window navigation keymaps
vim.keymap.set('n', '<C-h>', '<C-w>h', keymapOpts)
vim.keymap.set('n', '<C-j>', '<C-w>j', keymapOpts)
vim.keymap.set('n', '<C-k>', '<C-w>k', keymapOpts)
vim.keymap.set('n', '<C-l>', '<C-w>l', keymapOpts)

-- Stay in Visual mode after indenting
vim.keymap.set('v', '<', '<gv', keymapOpts)
vim.keymap.set('v', '>', '>gv', keymapOpts)

-- Easier buffer switching
-- vim.keymap.set('n', '<Leader>l', ':buffers<CR>:buffer<Space>', keymapOpts)

-- More intuitive exit terminal keymap
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')

-- Clears highlights when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Open Quickfix list
vim.keymap.set('n', '<leader>xq', function()
    local success, err = pcall(vim.fn.getqflist({ winid = 0 }).winid ~= 0 and vim.cmd.cclose or vim.cmd.copen)
    if not success and err then
        vim.notify(err, vim.log.levels.ERROR)
    end
end, { desc = 'Quickfix list' })

-- Open Oil
vim.keymap.set('n', '-', '<cmd>Oil<CR>')

vim.g.camelcasemotion_key = '<leader>'
