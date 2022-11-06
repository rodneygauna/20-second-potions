--[[
    Title: 20 Second Potions
    Author: s0n0f4L1ch
    Game Engine: Pico-8
    GitHub: https://github.com/rodneygauna/20-second-potions
    Game Jam: https://itch.io/jam/20-second-game-jam
]]

function _init()
    cls(0)
    mode="menu"
end

function _update()
    if mode=="menu" then
        update_menu()
    end
end

function _draw()
    if mode=="menu" then
        draw_menu()
    end
end