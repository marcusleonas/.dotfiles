vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

vim.keymap.set("n", "<leader>ft", vim.cmd.NvimTreeFocus)

vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_enter()', {expr = true, noremap = true})

function smart_enter()
    if vim.fn['coc#pum#visible']() == 1 then
        return vim.fn['coc#_select_confirm']()
    else
        return vim.api.nvim_input('<Tab>')
    end
end
