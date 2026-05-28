-- enkel command i chat som vises hovedvinduet
SLASH_LOOTLOGGER1 = "/lootlogger"
SlashCmdList["LOOTLOGGER"] = function()
    -- toggler hovedvinduet av/på
    if LootLoggerMainFrame:IsShown() then
        LootLoggerMainFrame:Hide()
    else
        LootLoggerMainFrame:Show()
        UpdateLootList()
    end
end

-- chat command som clearer databasen, clearer kun .loot 
SLASH_LLCLEAR1 = "/llclear"
SlashCmdList["LLCLEAR"] = function()
    -- tømmer hele loot-tabellen i databasen
    if LootLoggerClassicDB and LootLoggerClassicDB.loot then
        LootLoggerClassicDB.loot = {}
        print("Loot database cleared!")
    else
        print("No loot database found!")
    end
end

SLASH_LLHISTORY1 = "/llhistory"
SlashCmdList["LLHISTORY"] = function()
    if not LootLoggerClassicDB or not LootLoggerClassicDB.loot then
        print("No loot database found!")
        return
    end

    local loot = LootLoggerClassicDB.loot
    if #loot == 0 then
        print("Loot history is empty.")
        return
    end

    print("Loot history (" .. #loot .. " entries, newest first):")

    for i = #loot, 1, -1 do
        local entry = loot[i]
        local qty = entry.quantity or 1
        local zone = entry.zone or "Unknown"
        local dateStr = entry.date or ""
        local timeStr = entry.time or ""
        print(dateStr .. " " .. timeStr .. " | " .. zone .. " | " .. (entry.item or "?") .. " x" .. qty)
    end
end