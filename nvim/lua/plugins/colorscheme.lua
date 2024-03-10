return {
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require("kanagawa").setup({
                compile = true, -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                dimInactive = false, -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                transparent = true, -- do not set background color
                colors = { -- add/modify theme and palette colors
                    palette = {},
                    theme = {
                        wave = {},
                        lotus = {},
                        dragon = {},
                        all = {
                            ui = {
                                bg_gutter = "none",
                            },
                        },
                    },
                },
            })
            vim.cmd.colorscheme("kanagawa")
        end,
    },
}
