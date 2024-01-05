return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    module = "telescope",
    config = function()
        require("telescope").setup{
            defaults = {
                mappings = {
                    i = {
                        ["<C-j>"] = "move_selection_next",
                        ["<C-k>"] = "move_selection_previous",
                    },
                },
            },
		    pickers = {
                find_files = {
                    theme = "dropdown",
                    previewer = false,
                    hidden = true,
                },
                live_grep = {
                    theme = "dropdown",
                    previewer = false,
                },
                buffers = {
                    theme = "dropdown",
                    previewer = false,
                },
            },
        }

    end
    
}
