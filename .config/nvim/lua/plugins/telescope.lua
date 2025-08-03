return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    keys = {
        {
            '<leader><space>',
            ':Telescope find_files<CR>',
            desc = 'Find Files (Root Dir)',
        },
        {
            '<leader>/',
            ':Telescope live_grep<CR>',
            desc = 'Grep (Root Dir)',
        },
        {
            '<leader>,',
            ':Telescope buffers<CR>',
            desc = 'Switch Buffer',
        },
        {
            '<leader>fh',
            ':Telescope help_tags<CR>',
            desc = 'Help Pages',
        },
        {
            '<leader>sd',
            '<cmd>Telescope diagnostics<CR>',
            desc = 'Workspace Diagnostics',
        },
        {
            '<leader>sD',
            '<cmd>Telescope diagnostics bufnr=0<CR>',
            desc = 'Document Diagnostics',
        },
        {
            '<leader>km',
            ':Telescope keymaps<CR>',
            desc = 'View keymaps',
        },
    },
}
