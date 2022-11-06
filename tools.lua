-- tools.lua

pots={}
for i=1,47 do
    local newpot={}
    newpot.spr=flr(rnd(47)+4)
    newpot.x=flr(rnd(128))
    newpot.y=flr(rnd(128))
    newpot.spd=rnd(1)+0.5
    add(pots,newpot)
end

function bgpot()
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