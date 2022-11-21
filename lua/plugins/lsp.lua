local status_ok, lsp_installer = pcall(require, 'nvim-lsp-installer')
if not status_ok then
    return
end

local status_ok, lsp_config = pcall(require, 'lspconfig')
if not status_ok then
    return
end


-- Configurar instalador LSP

lsp_installer.setup({})


-- Configurar LUA LSP 

lsp_config["sumneko_lua"].setup({
    settings = {
        Lua = {
            runtime = { version = 'LuaJIT' },
            diagnostics = { globals = {'vim'} },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            telemetry = { enable = false }
        }
    }
})
