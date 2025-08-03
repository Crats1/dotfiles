return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects'
        },
        main = 'nvim-treesitter.configs',
        opts = {
            ensure_installed = { "c", "cpp", "make", "lua", "vim", "vimdoc", "query", "heex", "javascript", "html", "css", "typescript", "json" },
            highlight = { enable = true },
            indent = { enable = true },
            textobjects = {
                move = {
                    enable = true,
                    goto_next_start = {
                        ["]m"] = "@function.outer",
                        ["]a"] = "@parameter.inner",
                    },
                    goto_next_end = {
                        ["]M"] = "@function.outer",
                        ["]A"] = "@parameter.inner",
                    },
                    goto_previous_start = {
                        ["[m"] = "@function.outer",
                        ["[a"] = "@parameter.inner",
                    },
                    goto_previous_end = {
                        ["[M"] = "@function.outer",
                        ["[A"] = "@parameter.inner",
                    },
                }

            },
        },
    },
}
