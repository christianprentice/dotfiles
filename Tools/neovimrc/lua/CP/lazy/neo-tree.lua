return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim",
    },
    opts = {
        close_if_last_window = true,
        enable_git_status = true,

        filesystem = {
            window = {
                position = "current",
            },
            hijack_netrw_behavior = "open_current",
            filtered_items = {
                visible = true,
                hide_dotfiles = false,
                hide_gitignored = true,
            },
        },
        window = {
            width = 30, -- General width, possibly overridden by position='current'
        },
    },
}
