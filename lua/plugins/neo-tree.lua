return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    -- key = {
    --   "n" = {
    --   ["<leader>o"] = {
    --     function()
    --       if vim.bo.filetype == "neo-tree" then
    --         vim.cmd.wincmd("p")
    --       else
    --         vim.cmd.Neotree("focus")
    --       end
    --     end,
    --     desc = "Toggle Explorer Focus",
    --     },
    --   },
    -- },
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".git",
          ".DS_Store",
          "thumbs.db",
        },
        never_show = {},
      },
    },
  },
}
