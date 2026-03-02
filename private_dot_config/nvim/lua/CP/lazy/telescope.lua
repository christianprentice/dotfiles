return {
    'nvim-telescope/telescope.nvim',

    version = '*',

    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find file' })
        vim.keymap.set('n', '<leader>frg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fgit', builtin.git_files, { desc = 'Telescope find files in git' })
        vim.keymap.set('n', '<leader>fh', builtin.find_files, { desc = 'Telescope help tags' })
    end
}
