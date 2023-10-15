local builtin = require("telescope.builtin")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    { "<leader>fr", false },
    { "<leader>fR", false },
    { "<leader>ft", false },
    -- change a keymap
    {
      "<leader>ff",
      function()
        builtin.find_files()
      end,
      desc = "Find Files",
    },
    {
      "<leader>fo",
      function()
        builtin.oldfiles()
      end,
      desc = "Recent Files",
    },
    {
      "<leader>ft",
      function()
        builtin.colorscheme({ enable_preview = true })
      end,
      desc = "Find Themes",
    },

    {
      "<leader>fr",
      function()
        builtin.registers()
      end,
      desc = "Find Registers",
    },
    -- add a keymap to browse plugin files
    {
      "<leader>fp",
      function()
        builtin.find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },

    --more keymaps
    -- { "<leader>f", sections.f, desc = "Find Files" },
    -- { "<leader>g", sections.g, desc = "Find Git Files" },
    {
      "<leader>gb",
      function()
        builtin.git_branches({ use_file_path = true })
      end,
      desc = "Git branches",
    },
    {
      "<leader>gc",
      function()
        builtin.git_commits({ use_file_path = true })
      end,
      desc = "Git commits (repository)",
    },
    {
      "<leader>gC",
      function()
        builtin.git_bcommits({ use_file_path = true })
      end,
      desc = "Git commits (current file)",
    },
    {
      "<leader>gt",
      function()
        builtin.git_status({ use_file_path = true })
      end,
      desc = "Git status",
    },
    {
      "<leader>f<CR>",
      function()
        builtin.resume()
      end,
      desc = "Resume previous search",
    },
    {
      "<leader>f'",
      function()
        builtin.marks()
      end,
      desc = "Find marks",
    },
    {
      "<leader>f/",
      function()
        builtin.current_buffer_fuzzy_find()
      end,
      desc = "Find words in current buffer",
    },
    -- {
    --     "<leader>fa",
    --     function()
    --         local cwd = vim.fn.stdpath "config" .. "/.."
    --         local search_dirs = {}
    --         -- Code for finding config directories here
    --         -- ...
    --         require("telescope.builtin").find_files {
    --             prompt_title = "Config Files",
    --             search_dirs = search_dirs,
    --             cwd = cwd,
    --             follow = true,
    --         }
    --     end,
    --     desc = "Find AstroNvim config files",
    -- },
    {
      "<leader>fb",
      function()
        builtin.buffers()
      end,
      desc = "Find buffers",
    },
    {
      "<leader>fc",
      function()
        builtin.grep_string()
      end,
      desc = "Find word under cursor",
    },
    {
      "<leader>fC",
      function()
        builtin.commands()
      end,
      desc = "Find commands",
    },
    {
      "<leader>ff",
      function()
        builtin.find_files()
      end,
      desc = "Find files",
    },
    {
      "<leader>fF",
      function()
        builtin.find_files({ hidden = true, no_ignore = true })
      end,
      desc = "Find all files",
    },
    {
      "<leader>fh",
      function()
        builtin.help_tags()
      end,
      desc = "Find help",
    },
    {
      "<leader>fk",
      function()
        builtin.keymaps()
      end,
      desc = "Find keymaps",
    },
    {
      "<leader>fm",
      function()
        builtin.man_pages()
      end,
      desc = "Find man",
    },
    {
      "<leader>fn",
      function()
        if is_available("nvim-notify") then
          require("telescope").extensions.notify.notify()
        end
      end,
      desc = "Find notifications",
    },
    {
      "<leader>fw",
      function()
        builtin.live_grep()
      end,
      desc = "Find words",
    },
    {
      "<leader>fW",
      function()
        builtin.live_grep({
          additional_args = function(args)
            return vim.list_extend(args, { "--hidden", "--no-ignore" })
          end,
        })
      end,
      desc = "Find words in all files",
    },
    -- { "<leader>l", sections.l, desc = "Search symbols" },
    {
      "<leader>ls",
      function()
        local aerial_avail, _ = pcall(require, "aerial")
        if aerial_avail then
          require("telescope").extensions.aerial.aerial()
        else
          builtin.lsp_document_symbols()
        end
      end,
      desc = "Search symbols",
    },
  },
}
