local get_args = function(position)
    local file_type = vim.bo.filetype
    local args = {
        "filesystem",
        "toggle",
        position
    }

    if file_type ~= "neo-tree" then
        table.insert(args, "%")
    end

    return args
end


vim.keymap.set("n", "<leader>e", function()
    vim.cmd({
        cmd = "Neotree",
        args = get_args("right"),
    })
end)

vim.keymap.set("n", "<leader>pv", function()
    vim.cmd({
        cmd = "Neotree",
        args = get_args("current"),
    })
end)
