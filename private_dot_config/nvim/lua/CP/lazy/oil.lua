return {
    "stevearc/oil.nvim",
    opts = {
        columns = { "permissions", "size", "mtime", "icon" },
        keymaps = {
            ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
        },
        view_options = {
            show_hidden = true,
        },
        float = { border = "rounded" },
        confirmation = { border = "rounded" },
        progress = { border = "rounded" },
        ssh = { border = "rounded" },
        keymaps_help = { border = "rounded" },
    },
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    lazy = false,
}
