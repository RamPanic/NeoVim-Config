local lsp_installer = require('nvim-lsp-installer')
local lsp_config = require('lspconfig')

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


-- Configurar Python LSP

lsp_config["pyright"].setup({})


-- Configurar Perl LSP

local perltidy_profile = os.getenv("HOME") .. '/.config/nvim/others/.perltidyrc'
local perlcritic_profile = os.getenv("HOME") .. '/.config/nvim/others/.perlcriticrc'

lsp_config["perlnavigator"].setup{
    cmd = {'node', '/opt/nvim/repos/PerlNavigator/server/out/server.js', '--stdio'},
    settings = {
      perlnavigator = {
          perlPath = 'perl',
          enableWarnings = true,
          perlcriticEnabled = true,
          perltidyProfile = perltidy_profile,
          perlcriticProfile = perlcritic_profile
      }
    }
}
