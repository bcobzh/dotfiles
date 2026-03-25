local map = vim.keymap.set

-- Pour recharger la conf ou redémarrer
map({ "n", "v", "x" }, "<leader>o", "<Cmd>source $MYVIMRC<CR>", { desc = "Source " .. vim.fn.expand("$MYVIMRC") })
map({ "n", "v", "x" }, "<leader>O", "<Cmd>restart<CR>", { desc = "Restart vim." })
-- on se foce a ne pas utiliser le fléches  ---
map({ 'n', 'i', 'v' }, '<up>', '<nop>')
map({ 'n', 'i', 'v' }, '<down>', '<nop>')
map({ 'n', 'i', 'v' }, '<left>', '<nop>')
map({ 'n', 'i', 'v' }, '<right>', '<nop>')
--  flèche droite/gauche pour switcher entre buffers  ---
map('n', '<left>', '<cmd>bp<CR>')
map('n', '<right>', '<cmd>bn<CR>')

map({ "n", "v", "x" }, "<leader>n", ":norm ", { desc = "ENTER NORM COMMAND." })
map({ "v", "x", "n" }, "<leader>y", '"+y', { desc = "System clipboard yank." })

local builtin = require("telescope.builtin")
map({ "n" }, "<leader>f", builtin.find_files, { desc = "Telescope fuzy find" })
map({ "n" }, "<leader>g", builtin.live_grep, { desc = "Telescope live grep" })
map({ 'v' }, '<leader>g', function()
	local text = vim.getVisualSelection(); -- fontion custom : la voir:  visual  <leader>g  :-)
	builtin.live_grep({ default_text = text })
end)

map({ "n" }, "<leader>G", builtin.grep_string, { desc = "Telescope live string" })
map({ "n" }, "<leader>r", builtin.oldfiles, { desc = "Telescope buffers" })
map({ "n" }, "<leader>b", builtin.buffers, { desc = "Telescope buffers" })
map({ "n" }, "<leader>h", builtin.help_tags, { desc = "Telescope help tags" })
map({ "n" }, "<leader>R", builtin.lsp_references, { desc = "Telescope tags" })
map({ "n" }, "<leader>T", builtin.builtin, { desc = "Telescope tags" })
map({ "n" }, "<leader>sr", builtin.lsp_references)
map({ "n" }, "<leader>sd", builtin.diagnostics)

map({ "n" }, "-", "<cmd>Oil<CR>")
map({ "n" }, "<leader>c", "1z=")
map({ "n" }, "<C-q>", ":copen<CR>", { silent = true }) -- pour voir les erreur courante dans une fenêtre

map({ "n" }, "<leader>ps", '<cmd>lua vim.pack.update()<CR>')

map({ 'v' }, "<leader>en", function()
	vim.toBase64()
end)
