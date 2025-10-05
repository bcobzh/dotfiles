local map = vim.keymap.set
local builtin = require("telescope.builtin")
map({ "n", "t" }, "<Leader>t", "<Cmd>tabnew<CR>")
map({ "n", "t" }, "<Leader>x", "<Cmd>tabclose<CR>")
for i = 1, 8 do
	map({ "n", "t" }, "<Leader>" .. i, "<Cmd>tabnext " .. i .. "<CR>")
end
map({ "n", "v", "x" }, "<leader>n", ":norm ", { desc = "ENTER NORM COMMAND." })
map({ "n", "v", "x" }, "<leader>o", "<Cmd>source $MYVIMRC<CR>", { desc = "Source " .. vim.fn.expand("$MYVIMRC") })
map({ "n", "v", "x" }, "<leader>O", "<Cmd>restart<CR>", { desc = "Restart vim." })
map({ "n", "v", "x" }, "<leader>lf", vim.lsp.buf.format, { desc = "Format current buffer" })
map({ "v", "x", "n" }, "<leader>y", '"+y', { desc = "System clipboard yank." })
map({ "n" }, "<leader>f", builtin.find_files, { desc = "Telescope fuzy find" })
map({ "n" }, "<leader>g", builtin.live_grep, { desc = "Telescope live grep" })
map('v', '<leader>g', function()
	local text = vim.getVisualSelection();
	builtin.live_grep({ default_text = text })
end)

map({ "n" }, "<leader>G", builtin.grep_string, { desc = "Telescope live string" })
map({ "n" }, "<leader>r", builtin.oldfiles, { desc = "Telescope buffers" })
map({ "n" }, "<leader>b", builtin.buffers, { desc = "Telescope buffers" })
map({ "n" }, "<leader>h", builtin.help_tags, { desc = "Telescope help tags" })
map({ "n" }, "<leader>m", builtin.man_pages, { desc = "Telescope man pages" })
map({ "n" }, "<leader>R", builtin.lsp_references, { desc = "Telescope tags" })
map({ "n" }, "<leader>T", builtin.builtin, { desc = "Telescope tags" })
map({ "n" }, "-", "<cmd>Oil<CR>")
map({ "n" }, "<leader>c", "1z=")
map({ "n" }, "<C-q>", ":copen<CR>", { silent = true })
map({ "n" }, "<C-f>", "<Cmd>Open .<CR>", { desc = "Open current directory in Finder." })

map({ "n", "v", "x" }, "<leader>p", vim.pack.update, { desc = "Format current buffer" })
