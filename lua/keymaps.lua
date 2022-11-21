-- ==== Functions ====

local function map(mode, shortcut, command)
    vim.api.nvim_set_keymap(
        mode,
        shortcut,
        command,
        { noremap = true, silent = true }
    )
end

local function nmap(shortcut, command)
    map('n', shortcut, command)
end

local function imap(shortcut, command)
    map('i', shortcut, command)
end

local function vmap(shortcut, command)
    map('v', shortcut, command)
end


-- ==== Leader ====

map('', '<space>', '<nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


-- ==== Keymaps ====

-------------
-- Base
-------------

-- Copy, Paste and Delete line

vmap('<c-d>', 'dd')
vmap('<c-c>', 'yy')
vmap('<c-v>', 'P')

-- Window Split

nmap('<leader>h', '<c-w>s')
nmap('<leader>v', '<c-w>v')
nmap('<leader>q', '<c-w>q')

-- Window Move

nmap('<leader><Up>', '<c-w><Up>')
nmap('<leader><Down>', '<c-w><Down>')
nmap('<leader><Right>', '<c-w><Right>')
nmap('<leader><Left>', '<c-w><Left>')

-- Window Resize 

nmap('<C-Up>', ':resize -2<CR>')
nmap('<C-Down>', ':resize +2<CR>')
nmap('<C-Left>', ':vertical resize -2<CR>')
nmap('<C-Right>', ':vertical resize +2<CR>')

-- Move line

vmap('<c-Up>', ':m \'<-2<cr>gv=gv')
vmap('<c-Down>', ':m \'>+1<cr>gv=gv')

-- Ident block 

vmap('<c-t>', '>')
nmap('<c-t>', '<esc>v>')

-- Replace text

vmap('<C-r>', '"hy:%s/<C-r>h//gc<left><left><left>')


-------------
-- Plugins
-------------

-- File Manager

nmap('<leader>o', ':CHADopen<CR>')

-- Telescope

nmap('<leader>s', ':Telescope find_files<CR>')

-- Diagnostics

nmap('<leader>d', ':TroubleToggle<CR>')
