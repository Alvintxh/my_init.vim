return{
    'nvimdev/dashboard-nvim',
     event = 'VimEnter',
     config = function()
       require('dashboard').setup {
        theme = 'doom',
        config = {
            header = {
                  '',
                  '',
                  '',
                  '',
                  '',
                  '',
                  '',
                  '████╗ ████║╚██╗ ██╔╝    ████╗  ██║██║   ██║██║████╗ ████║',
                  '██╔████╔██║ ╚████╔╝     ██╔██╗ ██║██║   ██║██║██╔████╔██║',
                  '██║╚██╔╝██║  ╚██╔╝      ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
                  '██║ ╚═╝ ██║   ██║       ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
                  '╚═╝     ╚═╝   ╚═╝       ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
            },

            center = {
                {icon  = "🐉🐉🐏🐏🐎🐎🐅🐅", desc = "", shortcut = "leader q e", action = {}},
                {icon  = "🐱🐱🐕🐕🐓🐓🦆🦆", desc = "", shortcut = "leader q w", action = {}},
                {icon  = "🐧🐧🦅🦅🦈🦈🐒🐒", desc = "", shortcut = "leader q r", action = {}},
             },

            footer = {'', '  Have fun with neovim'},
        }
      }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
