vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.wo.number = true
vim.o.relativenumber = true
vim.cmd("highlight CursorLineNr guifg=#7E9CD8")
vim.o.cursorline = true
--vim.o.cursorlineopt = "number"

-- Define a function to move the selection up
local function move_selection_up()
	vim.api.nvim_command([[normal! gv]])
	vim.api.nvim_input("<M-Up>")
end

-- Define a function to move the selection down
local function move_selection_down()
	vim.api.nvim_command([[normal! gv]])
	vim.api.nvim_input("<M-Down>")
end

-- Map Option + Up to move the selection up
vim.api.nvim_set_keymap("v", "<M-Up>", "<cmd>lua move_selection_up()<CR>", { noremap = true, silent = true })

-- Map Option + Down to move the selection down
vim.api.nvim_set_keymap("v", "<M-Down>", "<cmd>lua move_selection_down()<CR>", { noremap = true, silent = true })
