-- tools.lua

function bgpot()
    pots={}
    -- generates pots and
    -- randomizes their x,y, and spd
    for i=1,35 do
        local newpot={}
        newpot.spr=flr(rnd(52))
        newpot.x=flr(rnd(128))
        newpot.y=flr(rnd(128))
        newpot.spd=rnd(1)
        add(pots,newpot)
    end
    for i=1,#pots do
        local bgpots=pots[i]
        spr(bgpots.spr, bgpots.x,bgpots.y)
    end
    for i=1,#pots do
        local bgpots=pots[i]
        bgpots.y=bgpots.y+bgpots.spd
        if bgpots.y>128 then
            bgpots.y=bgpots.y-128
        end
    end
end