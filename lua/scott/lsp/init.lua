local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("scott.lsp.mason-lsp-installer")
require("scott.lsp.mason-lspconfig-setup")
require("scott.lsp.handlers").setup()
