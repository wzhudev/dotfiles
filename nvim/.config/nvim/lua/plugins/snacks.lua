return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    return vim.tbl_deep_extend("force", opts, {
      explorer = {
        enabled = true, -- 启用文件浏览器
        hidden = true, -- 显示隐藏文件（例如 .gitignore）
        ignored = true, -- 显示被 Git 忽略的文件
      },
      picker = {
        sources = {
          explorer = {
            hidden = true, -- 在 picker 的 explorer 中显示隐藏文件
            ignored = true, -- 在 picker 的 explorer 中显示被 Git 忽略的文件
          },
          files = {
            hidden = true, -- 在 picker 的 explorer 中显示隐藏文件
            ignored = true, -- 在 picker 的 explorer 中显示被 Git 忽略的文件
          },
        },
      },
    })
  end,
}
