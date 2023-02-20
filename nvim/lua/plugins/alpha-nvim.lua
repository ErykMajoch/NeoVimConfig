-----------------------------------------------------------
-- Dashboard configuration file
-----------------------------------------------------------

-- Plugin: alpha-nvim
-- url: https://github.com/goolord/alpha-nvim

-- For configuration examples see: https://github.com/goolord/alpha-nvim/discussions/16


local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
  return
end

local dashboard = require('alpha.themes.dashboard')

-- Footer
local function footer()
  local version = vim.version()
  local print_version = "v" .. version.major .. '.' .. version.minor .. '.' .. version.patch
  local datetime = os.date('%Y/%m/%d %H:%M:%S')

  return print_version .. ' - ' .. datetime
end

-- Banner
local banner = {
  "                                                    ",
  " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                    ",
}

local melon = {
    [[ _______             ____   ____.__         ]],
    [[ \      \   ____  ___\   \ /   /|__| _____  ]],
    [[ /   |   \_/ __ \/  _ \   Y   / |  |/     \ ]],
    [[/    |    \  ___(  <_> )     /  |  |  Y Y  \]],
    [[\____|__  /\___  >____/ \___/   |__|__|_|  /]],
    [[        \/     \/                        \/ ]],
    [[     _____         .__                      ]],
    [[    /     \   ____ |  |   ____   ____       ]],
    [[   /  \ /  \_/ __ \|  |  /  _ \ /    \      ]],
    [[  /    Y    \  ___/|  |_(  <_> )   |  \     ]],
    [[  \____|__  /\___  >____/\____/|___|  /     ]],
    [[          \/     \/                 \/      ]],
}

local doom = {
  [[                                                                                ]],
    [[ =================     ===============     ===============   ========  ======== ]],
    [[ \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . // ]],
    [[ ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .|| ]],
    [[ || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . || ]],
    [[ ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .|| ]],
    [[ || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . || ]],
    [[ ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .|| ]],
    [[ || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . || ]],
    [[ ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.|| ]],
    [[ ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `|| ]],
    [[ ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   || ]],
    [[ ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   || ]],
    [[ ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   || ]],
    [[ ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   || ]],
    [[ ||   .=='    _-'          `-__\._-'         `-_./__-'         `' |. /|  |   || ]],
    [[ ||.=='    _-'                                                     `' |  /==.|| ]],
    [[ =='    _-'                           NEOVIM                           \/   `== ]],
    [[ \   _-'                                                                `-_   / ]],
    [[  `''                                                                      ``'  ]],
    [[                                                                                ]],
}

dashboard.section.header.val = melon

-- Menu
dashboard.section.buttons.val = {
  dashboard.button('e', '  New file', ':ene <BAR> startinsert<CR>'),
  dashboard.button('f', '  Find file', ':NvimTreeOpen<CR>'),
  dashboard.button('s', '  Settings', ':e $MYVIMRC<CR>'),
  dashboard.button('u', '  Update plugins', ':PackerUpdate<CR>'),
  dashboard.button('q', '  Quit', ':qa<CR>'),
}

dashboard.section.footer.val = footer()

alpha.setup(dashboard.config)
