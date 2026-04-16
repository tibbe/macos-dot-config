return {
  "sindrets/diffview.nvim",
  opts = {
    enhanced_diff_hl = true,
  },
  keys = {
    {
      "<leader>gv",
      function()
        if next(require("diffview.lib").views) ~= nil then
          vim.cmd("DiffviewClose")
        else
          vim.cmd("DiffviewOpen")
        end
      end,
      desc = "Toggle Diffview",
    },
  },
}
