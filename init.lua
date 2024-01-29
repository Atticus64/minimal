vim.g.mapleader = " "
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_hijack_netrw = 1
vim.g.loaded_netrw = 1

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("jo.plugins")

require("jo.set")
require("jo.keys")
require("jo.config")

