return {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },

    version = '1.*',

    opts = {
        keymap = {
            preset = 'default',

            ["<return>"] = {"accept"},
        },

        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'normal',
        },

        signature = { enabled = true },

    },
}
