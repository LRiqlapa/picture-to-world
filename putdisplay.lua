delay = 100




-------------------------------
-- JANGAN SENTUH DIBAWAH INI -- 
--   DONT TOUCH THE BOTTOM   --
-------------------------------

-- ## SC CREATED BY Void_String ## --
-- yg ngapus wm itu ga rispek bwanget wok

function fnd(id)
    count = 0
    for _, inv in pairs(GetInventory()) do
        if inv.id == id then
            count = count + inv.amount
        end
    end
    return count
end

function getdis()
SendPacket(2, [[action|dialog_return
dialog_name|item_search
searched|display shelf|
3794|1
3795|0
10190|0
10191|0
10552|0
10553|0
stay|0]])
end

function server(t, s, v, x, y)
    if fnd(v) == 0 then
        getdis()
        Sleep(5000)
    end
SendPacketRaw(false, {type = t, state = s, value = v, px = x, py = y, x = x * 32, y = y * 32})
end

function fp(x, y, d)
return FindPath(x-1, y, d) or FindPath(x, y, d)
end

local revers = true
for x = 1, 99, 10 do
     local xa = (revers and 59) or (0)
     local xb = (revers and 0) or (59)
     local xm = (revers and -1) or (1)
    for y = xa, xb, xm do
        LogToConsole("X: "..x.." Y: "..y)
        if GetTile(x, y).fg == 0 and fp(x, y, 1000) then
            server(3, 0, 3794, x, y)
            Sleep(delay)
        end
        if y >= 10 and y % 10 == 0 then;Sleep(1);end
    end
    revers = not revers

end

