
local delayput = 100
local DelayTP = 100



dir = os.getenv("USERPROFILE").."\\AppData\\Local\\Growtopia\\scripts\\tabelart.txt"

local indexing = {}
local inti = 1

local collor = {
    ["Hitam"] = 1158,
    ["Cokelat"] = 1744,
    ["Abu-abu"] = 556,
    ["Merah"] = 558,
    ["Teal"] = 566,
    ["Hijau Terang"] = 564,
    ["Putih"] = 1156,
    ["Kuning Emas"] = 562,
    ["Oranye"] = 560,
    ["Biru"] = 568,
    ["Hijau Hutan"] = 4942,
    ["Ungu Muda"] = 570,
    ["Biru Navy"] = 4944,
    ["Cokelat Tua"] = 8236,
    ["Abu-abu Gelap"] = 8238,
    ["Merah Tua"] = 2962,
    ["Hijau Sangat Tua"] = 8228,
    ["Kuning Mustar"] = 8230,
    ["Cokelat Karat"] = 8234,
    ["Ungu Gelap"] = 8232
}


-- 1158
-- 1744
-- 556
-- 558
-- 566
-- 564
-- 1156
-- 562
-- 560
-- 568
-- 4942
-- 570
-- 4944
-- 8236
-- 8238
-- 2962
-- 8228
-- 8230
-- 8234
-- 8232

-- function getitem(id)
--     LogToConsole("find item"..id)
    
--     -- String template statis (dengan placeholder untuk nilai 0/1)
--     local packetLines = {
--         "action|dialog_return\ndialog_name|item_search\nsearched|wallpaper|"
--     }
    
--     -- Daftar ID yang ada di template original
--     local itemIds = {
--         198, 199, 200, 201, 284, 285, 326, 327, 432, 433,
--         556, 557, 558, 559, 560, 561, 562, 563, 564, 565,
--         566, 567, 568, 569, 570, 571, 1156, 1157, 1158, 1159,
--         1726, 1727, 1744, 1745, 1878, 1879, 1982, 1983,
--         2496, 2497, 2498, 2499, 2500, 2501, 2502, 2503,
--         2504, 2505, 2506, 2507, 2508, 2509, 2788, 2789,
--         2962, 2963, 2988, 2989, 2990, 2991, 3082, 3083,
--         3786, 3787, 4160, 4161, 4606, 4607, 4942, 4943,
--         4944, 4945, 5272, 5273, 7854, 7855, 8206, 8207,
--         8208, 8209, 8210, 8211, 8228, 8229, 8230, 8231,
--         8232, 8233, 8234, 8235, 8236, 8237, 8238, 8239,
--         8322, 8323, 8338, 8339, 9290, 9291, 9480, 9481,
--         9626, 9627, 9668, 9669, 10636, 10637, 10708, 10709,
--         10710, 10711, 11278, 11279, 12220, 12221, 13468, 13469,
--         14060, 14061, 15086, 15087
--     }
    
--     -- Tambahkan setiap ID dengan nilai yang sesuai
--     for _, itemId in ipairs(itemIds) do
--         if type(itemId) == "number" then
--             -- Cek apakah ID ini ada di targetIds DAN jumlahnya 0 di inventory
--             local shouldTake = (id == itemId)
--             table.insert(packetLines, tostring(itemId) .. "|" .. (shouldTake and "1" or "0"))
--         else
--             -- Untuk baris non-ID (seperti "stay|0")
--             table.insert(packetLines, itemId)
--         end
--     end
    
--     -- Gabungkan semua baris menjadi satu paket
--     local packet = table.concat(packetLines, "\n")
--     LogToConsole(packet.."\nstay|0")
--     SendPacket(2, packet.."\nstay|0")
-- end

function getitem(ids)
local packet = [[action|dialog_return
dialog_name|item_search
searched|wallpaper|
198|0
199|0
200|0
201|0
284|0
285|0
326|0
327|0
432|0
433|0
]]
    
    -- Tambahkan bagian 556-571 dengan logika dinamis baru
    packet = packet .. "556|" .. (ids == 556 and "1" or "0") .. "\n"
    packet = packet .. "557|0\n"
    packet = packet .. "558|" .. (ids == 558 and "1" or "0") .. "\n"
    packet = packet .. "559|0\n"
    packet = packet .. "560|" .. (ids == 560 and "1" or "0") .. "\n"
    packet = packet .. "561|0\n"
    packet = packet .. "562|" .. (ids == 562 and "1" or "0") .. "\n"
    packet = packet .. "563|0\n"
    packet = packet .. "564|" .. (ids == 564 and "1" or "0") .. "\n"
    packet = packet .. "565|0\n"
    packet = packet .. "566|" .. (ids == 566 and "1" or "0") .. "\n"
    packet = packet .. "567|0\n"
    packet = packet .. "568|" .. (ids == 568 and "1" or "0") .. "\n"
    packet = packet .. "569|0\n"
    packet = packet .. "570|" .. (ids == 570 and "1" or "0") .. "\n"
    packet = packet .. "571|0\n"
    
    -- Tambahkan bagian 1156-1159
    packet = packet .. "1156|" .. (ids == 1156 and "1" or "0") .. "\n"
    packet = packet .. "1157|0\n"
    packet = packet .. "1158|" .. (ids == 1158 and "1" or "0") .. "\n"
    packet = packet .. "1159|0\n"
    
    -- Lanjutkan dengan bagian statis
    packet = packet .. [[1726|0
1727|0
]]
    
    -- Tambahkan 1744-1745
    packet = packet .. "1744|" .. (ids == 1744 and "1" or "0") .. "\n"
    packet = packet .. "1745|0\n"
    
    -- Lanjutkan dengan bagian statis
    packet = packet .. [[1878|0
1879|0
1982|0
1983|0
2496|0
2497|0
2498|0
2499|0
2500|0
2501|0
2502|0
2503|0
2504|0
2505|0
2506|0
2507|0
2508|0
2509|0
2788|0
2789|0
]]
    
    -- Tambahkan 2962-2963
    packet = packet .. "2962|" .. (ids == 2962 and "1" or "0") .. "\n"
    packet = packet .. "2963|0\n"
    
    -- Lanjutkan dengan bagian statis
    packet = packet .. [[2988|0
2989|0
2990|0
2991|0
3082|0
3083|0
3786|0
3787|0
4160|0
4161|0
4606|0
4607|0
]]
    
    -- Tambahkan 4942-4945
    packet = packet .. "4942|" .. (ids == 4942 and "1" or "0") .. "\n"
    packet = packet .. "4943|0\n"
    packet = packet .. "4944|" .. (ids == 4944 and "1" or "0") .. "\n"
    packet = packet .. "4945|0\n"
    
    -- Lanjutkan dengan bagian statis
    packet = packet .. [[5272|0
5273|0
7854|0
7855|0
8206|0
8207|0
8208|0
8209|0
8210|0
8211|0
]]
    
    -- Tambahkan 8228-8239
    packet = packet .. "8228|" .. (ids == 8228 and "1" or "0") .. "\n"
    packet = packet .. "8229|0\n"
    packet = packet .. "8230|" .. (ids == 8230 and "1" or "0") .. "\n"
    packet = packet .. "8231|0\n"
    packet = packet .. "8232|" .. (ids == 8232 and "1" or "0") .. "\n"
    packet = packet .. "8233|0\n"
    packet = packet .. "8234|" .. (ids == 8234 and "1" or "0") .. "\n"
    packet = packet .. "8235|0\n"
    packet = packet .. "8236|" .. (ids == 8236 and "1" or "0") .. "\n"
    packet = packet .. "8237|0\n"
    packet = packet .. "8238|" .. (ids == 8238 and "1" or "0") .. "\n"
    packet = packet .. "8239|0\n"
    
    -- Lanjutkan dengan bagian statis terakhir
    packet = packet .. [[8322|0
8323|0
8338|0
8339|0
9290|0
9291|0
9480|0
9481|0
9626|0
9627|0
9668|0
9669|0
10636|0
10637|0
10708|0
10709|0
10710|0
10711|0
11278|0
11279|0
12220|0
12221|0
13468|0
13469|0
14060|0
14061|0
15086|0
15087|0
stay|0]]
    
    LogToConsole("find item"..ids)
    SendPacket(2, packet)
end

function bacaTabelDariFile(namaFile)
    local file = io.open(namaFile, "r")
    if not file then
        LogToConsole("File tidak ditemukan: " .. namaFile)
        return false
    end
    file:close()
    
    local status, result = pcall(dofile, namaFile)
    
    if not status then
        LogToConsole("Error loading file: " .. tostring(result))
        return false
    end
    
    if type(result) ~= "table" then
        LogToConsole("File tidak berisi tabel yang valid")
        return false
    end
    
    indexing = result
    LogToConsole("Berhasil memuat ")
    return true
end

function phfindpath(targetX, targetY)
    local currentX, currentY = GetLocal().pos.x // 32, GetLocal().pos.y // 32
    
    -- Simple direct pathfinding
    local steps = math.max(math.abs(targetX - currentX), math.abs(targetY - currentY))
    for i = 2, steps, 2 do
        local progress = i / steps
        local x = math.floor(currentX + (targetX - currentX) * progress)
        local y = math.floor(currentY + (targetY - currentY) * progress)
        
        if FindPath(x, y) then
            return true
        else
            return false
        end
        Sleep(DelayTP)
    end
end

function server(t, s, v, x, y, facing)
SendPacketRaw(false, {type = t, state = s, value = v, px = x, py = y, x = x * 32, y = y * 32})
end

function fnd(id)
    count = 0
    for _, inv in pairs(GetInventory()) do
        if inv.id == id then
            count = count + inv.amount
        end
    end
    return count
end

function insertcollor(x, y, id, grub)
if fnd(id) <= 1 then
    Sleep(1000)
    getitem(id)
    Sleep(5000)
end
Sleep(delayput)
server(3, 0, 32, x, y, true)
Sleep(delayput)
SendPacket(2, "action|dialog_return\ndialog_name|dshelf_edit\nx|"..x.."|\ny|"..y.."|\nPlaceItem"..grub.."|"..id)
Sleep(delayput)
end

bacaTabelDariFile(dir)
Sleep(1000)
AddHook("onvariant", "hook", function(var)
if var[0] == "OnDialogRequest" then
    if var[1]:find("`9Display Shelf") then
    return true
    elseif var[1]:find("wItem Finder") then
    return true
    end
end
return false
end)

for y = 59, 0, -1 do
    for x = 0, 99 do
        LogToConsole("X: "..x.." Y: "..y)
        if GetTile(x, y).fg == 3794 and FindPath(x, y, 1000) then
            if indexing["grub"..inti] then
                local grubData = indexing["grub"..inti]
                for pixelIndex = 0, 3 do
                    local pixelKey = "pixel"..pixelIndex
                    local colorName = grubData[pixelKey]
                    if colorName then
                        local colorId = collor[colorName]
                        if colorId then
                            insertcollor(x, y, colorId, pixelIndex)
                        else
                            LogToConsole("Warna tidak ditemukan: " .. colorName .. " untuk grub" .. inti)
                        end
                    end
                end
            end
        end
        inti = inti + 1
        if x >= 10 and x % 10 == 0 then;Sleep(1);end
    end
end
LogToConsole("Selesai memasang art!")

