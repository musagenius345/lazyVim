--{
return
--{
{
	"echasnovski/mini.comment",
	opts = {
		mappings = {
			comment_line = "<leader>/",
		},
	},
	config = function(_, opts)
		vim.schedule(function()
			require("mini.comment").setup(opts)
		end)
	end,
}

--, {
--     'numToStr/Comment.nvim',
--     opts = {
--         -- add any options here
--     },
--     lazy = false,
-- }
--}
