if vim.g.vscode then

  -- VSCode extension
else
  -- ordinary Neovim
end

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- remap leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- yank to system clipboard
keymap({"n", "v"}, "<leader>y", '"+y', opts)

-- paste from system clipboard
keymap({"n", "v"}, "<leader>p", '"+p', opts)

-- better indent handling
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- paste preserves primal yanked piece
keymap("v", "p", '"_dP', opts)

-- removes highlighting after escaping vim search
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)

-- general keymaps
keymap({"n"}, "<leader>h", "<cmd>lua require('vscode').action('workbench.action.previousEditor')<CR>")
keymap({"n"}, "<leader>l", "<cmd>lua require('vscode').action('workbench.action.nextEditor')<CR>")
keymap({"n"}, "<leader>H", "<cmd>lua require('vscode').action('workbench.action.focusFirstEditorGroup')<CR>")
keymap({"n"}, "<leader>L", "<cmd>lua require('vscode').action('workbench.action.focusLastEditorGroup')<CR>")
keymap({"n"}, "<leader>v", "<cmd>lua require('vscode').action('workbench.action.splitEditorRight')<CR>")
keymap({"n"}, "<leader>w", "<cmd>lua require('vscode').action('workbench.action.closeActiveEditor')<CR>")
keymap({"n"}, "<leader>s", "<cmd>lua require('vscode').action('workbench.view.search.focus')<CR>")
keymap({"n"}, "<leader>f", "<cmd>lua require('vscode').action('workbench.files.action.focusFilesExplorer')<CR>")
keymap({"n"}, "<leader>g", "<cmd>lua require('vscode').action('workbench.scm.focus')<CR>")
keymap({"n"}, "<leader>q", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>")
