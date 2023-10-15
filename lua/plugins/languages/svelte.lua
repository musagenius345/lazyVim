return {
  {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, { "svelte" })
    end
  end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts) 
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, "svelte") 
      end
  },


  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts) 
      if type(opts.ensure_installed) == "table" then 
        vim.list_extend(opts.ensure_installed, "js") 
      end
  },
}
