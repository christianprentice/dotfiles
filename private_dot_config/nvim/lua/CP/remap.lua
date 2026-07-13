vim.g.mapleader = " "

-- CORE
vim.keymap.set("n", "<leader>w", vim.cmd.w, { desc = "Save file" })
vim.keymap.set("n", "<leader>q", vim.cmd.q, { desc = "Quit" })
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Exit insert mode safely" })
vim.keymap.set("n", "<leader>ter", ":terminal<CR>", { desc = "Open terminal within vim session" })

-- NAVIGATION & CENTERING
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Page down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Page up and center" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search match and center" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev search match and center" })

-- TEXT MANIPULATION
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })
-- Join line below without moving cursor
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join line below" })

-- CLIPBOARD (System)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]], { desc = "Paste from system clipboard" })
vim.keymap.set("n", "<leader>P", [["+P]], { desc = "Paste before from system clipboard" })

-- PLUGINS & LSP (Global)
vim.keymap.set("n", "<leader>oi", "<CMD>Oil<CR>", { desc = "Open Oil" })
vim.keymap.set("n", "<leader>for", vim.lsp.buf.format, { desc = "Format buffer" })
