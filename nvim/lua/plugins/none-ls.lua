return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.golines,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.mdformat,
				null_ls.builtins.formatting.sqlfmt,
				null_ls.builtins.formatting.yamlfix,
				null_ls.builtins.formatting.buf,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
			},
		})

		vim.keymap.set("n", "<leader>p", vim.lsp.buf.format, {})
	end,
}
