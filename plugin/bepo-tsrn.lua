-- Copyright 2022 Clément Joly -- https://github.com/cljoly/bepo.nvim
-- Published under the terms of the Apache-2.0 license.

local function map_text_object(key, target)
  vim.api.nvim_set_keymap('o', key, target, {noremap = true})
  vim.api.nvim_set_keymap('x', key, target, {noremap = true})
  return nil
end


local function map_visual(key, target)
  vim.api.nvim_set_keymap('v', key, target, {noremap = true})
  return nil
end

local function map_insert(key, target)
  vim.api.nvim_set_keymap('i', key, target, {noremap = true})
  return nil
end

local function map_normal(key, target)
  vim.api.nvim_set_keymap('n', key, target, {noremap = true})
  return nil
end

local function map_term(key, target)
  vim.api.nvim_set_keymap('t', key, target, {noremap = true})
  return nil
end

local function map_cmd(key, target)
  vim.api.nvim_set_keymap('c', key, target, {noremap = true})
  return nil
end

local function map_all(key, target)
  map_normal(key, target)
  map_text_object(key, target)
  return nil
end

-- Copyright 2024 Thomas Letan <lthms@soap.coffee>

-- replacement for h,l,[g]j,[g]k
map_all('t', 'h')
map_all('n', 'l')
map_all('s', 'gj')
map_all('r', 'gk')
-- remap w to é
map_all('é', 'w')
map_all('É', 'W')
-- replace with l
map_all('l', 'r')
map_all('L', 'R')

-- if we take something from Emacs, it’s <C-g>.
map_all('<C-g>', '<esc>')
map_cmd('<C-g>', '<esc>')
map_insert('<C-g>', '<esc>')
map_term('<C-g>', '<C-\\><C-n>')

map_normal('|', ':vsplit<CR>')
map_normal('¦', ':split<CR>')
map_normal('àt', '<C-w>h')
map_normal('àn', '<C-w>l')
map_normal('às', '<C-w>j')
map_normal('àr', '<C-w>k')

map_normal('Q', 'q')
map_normal('q', '<Nop>')

map_all('j', 't')
map_all('J', 'T')

map_all('m', 'n')
map_all('M', 'N')

map_normal('<C-c><C-n>', ':lua vim.diagnostic.goto_next()<CR>')
map_normal('<C-c><C-p>', ':lua vim.diagnostic.goto_prev()<CR>')

map_visual('<M-c>', '"+y')

