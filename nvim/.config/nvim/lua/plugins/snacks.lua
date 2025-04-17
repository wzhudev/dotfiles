return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    return vim.tbl_deep_extend("force", opts, {
      scroll = { enabled = false },
      explorer = {
        enabled = true,
        hidden = true,
        ignored = true,
      },
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
          },
          files = {
            hidden = true,
            ignored = true,
            exclude = { "**/node_modules/*" },
          },
        },
      },
    })
  end,
}
