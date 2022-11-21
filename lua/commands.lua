
local command = vim.cmd

command[[hi Pmenu ctermbg=NONE guibg=NONE]]


local function set_diagnostic_signs()
    command("sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=")
    command("sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=")
    command("sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=")
    command("sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=")
end

set_diagnostic_signs()
