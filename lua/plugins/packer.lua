-- Verificar si Packer está instalado

local functions = vim.fn
local install_path = functions.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if functions.empty(functions.glob(install_path)) > 0 then
    packer_bootstrap = functions.system({
        'git', 'clone', '--depth', 1, 'https://github.com/wbthomason/packer.nvim.git', install_path
    })
end


-- Instalar nuestros plugins abajo

return require('packer').startup(function(use)

    -- Plugin Manager

    use { 'wbthomason/packer.nvim' }

    -- Plenary
    
    use { "nvim-lua/plenary.nvim" }

    -- Treesitter

    --use { "nvim-treesitter/nvim-treesitter" }

    -- Icons
    
    use {
        'ryanoasis/vim-devicons',
        'nvim-tree/nvim-web-devicons'
    }

    -- Alpha greet
    
    use { 'goolord/alpha-nvim' }

    -- Status Bar

    use { 'feline-nvim/feline.nvim' }

    -- File Manager

    use {
	    'ms-jpq/chadtree',
	    branch = 'chad',
    }

    -- Telescope

    use { 'nvim-telescope/telescope.nvim' }

    -- Wilder

    use {
        'gelguy/wilder.nvim'
    }

    -- LSP
    
    use { 
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer'
    }

    -- Diagnostics

    use { 
        'folke/trouble.nvim', 
        requires = { 
            {'folke/lsp-colors.nvim'} 
        } 
    }

end)
