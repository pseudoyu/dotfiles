require("double_cmdq_to_quit")

local function pressFn(mods, key)
    if key == nil then
        key = mods
        mods = {}
    end
    return function() hs.eventtap.keyStroke(mods, key, 80) end
end
local function remap(mods, key, pressFn)
    hs.hotkey.bind(mods, key, pressFn, nil, pressFn)
end
remap({'alt'}, 'h', pressFn('left'))
remap({'alt'}, 'j', pressFn('down'))
remap({'alt'}, 'k', pressFn('up'))
remap({'alt'}, 'l', pressFn('right'))