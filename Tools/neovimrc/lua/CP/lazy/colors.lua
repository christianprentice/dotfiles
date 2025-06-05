function ColorMyPencils(color)
	color = color or "carbonfox"

    local status_ok, err = pcall(vim.cmd.colorscheme, color)
    if not status_ok then
        vim.notify("Colorscheme '" .. color .. ", not found!" .. err, vim.log.levels.WARN)
        return
    end

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {
    {
        "EdenEast/nightfox.nvim",
    },
    {
      "nyoom-engineering/oxocarbon.nvim"
      -- Add in any other configuration;
      --   event = foo,
      --   config = bar
      --   end,
    }
}
