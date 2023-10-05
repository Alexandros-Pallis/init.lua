local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>?', builtin.oldfiles, {desc = '[?] Old files'})
vim.keymap.set('n', '<leader><space>', builtin.buffers, {desc = '[ ] Find existing buffers'})
vim.keymap.set('n', '<leader>/', function()
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({
        winblend = 10,
        previewer = false,
    }))
end, {desc = '[/] Fuzzily search in current files'})


vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = '[p][f] Project find files'})
vim.keymap.set('n', '<leader>pw', builtin.grep_string, {desc = '[p][w] Search current word'})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {desc = '[p][g] Search by grep'})
vim.keymap.set('n', '<leader>pd', builtin.diagnostics, {desc = '[p][d] Search diagnostics'})
vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = '[ctrl][p] Search git files'})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {desc = '[v][h] Search help tags'})

