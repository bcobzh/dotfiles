vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

require("oil").setup({
    default_file_explorer = true,
    git = {
        -- Return true to automatically git add/mv/rm files
        add = function(path)
            return true
        end,
        mv = function(src_path, dest_path)
            return true
        end,
        rm = function(path)
            return true
        end,
    }
})
