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