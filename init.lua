if vim.loader then
	vim.loader.enable()
end

vim.o.termguicolors = true

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

require("config.lazy")

-- установить тему (пример)
vim.cmd([[colorscheme gruvbox]])

-- затем сделать фон прозрачным
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- иногда также полезно:
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
