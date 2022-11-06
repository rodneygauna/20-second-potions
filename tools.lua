-- tools.lua

function bgpot()
    -- generates pots and
    -- randomizes their x,y, and spd
    for i=1,#pots do
        local bgpots=pots[i]
        spr(bgpots.spr, bgpots.x,bgpots.y)
    end
end
function animbgpot()
    for i=1,#pots do
        local bgpots=pots[i]
        bgpots.y=bgpots.y+bgpots.spd
        if bgpots.y>128 then
            bgpots.y=bgpots.y-128
        end
    end
end