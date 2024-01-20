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

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require('lazy').setup('plugins')

require("scafeio")

-- Set runtimepath
vim.opt.runtimepath:prepend("~/.vim")
vim.opt.runtimepath:append("~/.vim/after")

-- Set packpath to the same as runtimepath
vim.opt.packpath = vim.opt.runtimepath:get()

-- Source the .vimrc file
vim.cmd("source ~/.vimrc")
