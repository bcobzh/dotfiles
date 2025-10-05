
# LSP
## Config files
cf : https://github.com/neovim/nvim-lspconfig/blob/master/lsp
# LSP languages server

* avec nmp
```
npm install -g dockerfile-language-server-nodejs
npm install -g bash-language-server
npm install -g pyright
```

* depuis les releases sur Github
   * https://github.com/opentofu/tofu-ls/releases
   * https://github.com/LuaLS/lua-language-server/releases/
   * https://github.com/mrjosh/helm-ls/releases/
   * https://releases.hashicorp.com/terraform-ls/

# blink.cmd
Problème si nightly-x86_64-unknown-linux-gnu pas installer :
```
cd ~/.local/share/nvim/site/pack/core/opt/blink.cmp
cargo build --release
``
