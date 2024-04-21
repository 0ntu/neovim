require("lualine").setup({
    options = {
        component_separators = '|',
        section_separators = { left = '', right = '' }
    },
    sections = {
        lualine_b = { 'diagnostics', 'branch' },
    },
})
