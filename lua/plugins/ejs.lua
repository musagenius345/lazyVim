return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    -- temporary fix for school projects
    vim.treesitter.language.register("html", "ejs")
    vim.treesitter.language.register("javascript", "ejs")
  end,
}
