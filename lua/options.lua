-- --------- Funciones ---------

local function option_exists (option)
    return vim.fn.has(option)
end


-- --------- Principal ---------

local options = vim.opt

-- General

options.clipboard   = 'unnamedplus'

-- Colores

if option_exists('termguicolors') then
    options.termguicolors = true    -- Se mostraron los colores correctamente
end

-- Visuales

options.encoding    = 'UTF-8'
options.showmatch   = true    -- Resaltar paréntesis y corchetes coincidentes
options.scrolloff   = 10      -- Número mínimo de líneas de pantalla para mantener por encima y por debajo del cursor
options.sidescroll  = 10      -- 

-- Texto

options.tabstop     = 4       -- Insertar espacios para un tab
options.softtabstop = 4       -- Cantidad de columnas que se mueve
options.shiftwidth  = 4       -- El número de espacios insertados para cada sangría
options.expandtab   = true    -- Convertir tabs a espacios
options.smartindent = true    -- Hacer sangría más inteligente de nuevo
options.wrap        = false   -- Mostrar líneas como una línea larga
