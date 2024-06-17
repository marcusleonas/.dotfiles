function smart_tab()
    if vim.fn.pumvisible() == 1 then
        return vim.fn["coc#_select_confirm"]()
    elseif vim.fn['coc#expandableOrJumpable']() then
        return vim.fn['coc#_do_list_expand']()
    else
        return vim.fn['smart_tab']()
    end
end

vim.g.smart_tab = function()
    return vim.fn['coc#refresh']()
end

