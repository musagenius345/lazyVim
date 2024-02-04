return {
  "David-Kunz/markid",
  config = function()
    require("nvim-treesitter.configs").setup({
      markid = { enable = true },
    })
  end,
}
