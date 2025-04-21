-- note that on my arch machine rust-analyzer is installed with pacman, not mason

-- :RustLsp renderDiagnostic
vim.keymap.set("n", "<leader>se", "<CMD>RustLsp renderDiagnostic current<Cr>")

