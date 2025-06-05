return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = 'Fugitive: Git Status' })
        vim.keymap.set('n', '<leader>gd', vim.cmd.Gdiff, { desc = 'Fugitive: Git Diff' })
        vim.keymap.set('n', '<leader>gb', vim.cmd.Gblame, { desc = 'Fugitive: Git Blame' })
        vim.keymap.set('n', '<leader>gc', ":Git commit<CR>", { desc = 'Fugitive: Git Commit' })
        vim.keymap.set('n', '<leader>gp', ":Git push<CR>", { desc = 'Fugitive: Git Push' })
        vim.keymap.set('n', '<leader>gpl', ":Git pull<CR>", { desc = 'Fugitive: Git Pull' })
        vim.keymap.set('n', '<leader>ga', ":Git add %<CR>", { desc = 'Fugitive: Git Add current file' })
        vim.keymap.set('n', '<leader>gA', ":Git add .<CR>", { desc = 'Fugitive: Git Add all changed files' })
        vim.keymap.set('n', '<leader>grs', ":Git reset %<CR>", { desc = 'Fugitive: Git Reset current file' })
        vim.keymap.set('n', '<leader>gl', ":Git log -- %<CR>", { desc = 'Fugitive: Git Log current file' })
    end
}
