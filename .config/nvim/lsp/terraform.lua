return {
 cmd = { "terraform-ls", "serve" },
 filetypes = { "terraform", "terraform-vars" },
 root_markers = {'.terraform', '.git'},
 vim.lsp.log.set_level('OFF')
}
