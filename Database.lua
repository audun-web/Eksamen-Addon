-- Oppretter database
LootLoggerClassicDB = LootLoggerClassicDB or {}
LootLoggerClassicDB.loot = LootLoggerClassicDB.loot or {}


-- funksjon som henter data fra spillet
local function AddLootEntry(itemLink, quantity)
    local entry = {
        item = itemLink,
        quantity = quantity,
        time = date("%H:%M:%S"),
        date = date("%Y-%m-%d"),
        zone = GetZoneText(),
    }

    table.insert(LootLoggerClassicDB.loot, entry)

    LootLoggerSessionItems = (LootLoggerSessionItems or 0) + (quantity or 1)

    print("Loot logged:", itemLink, "x" .. quantity)
end


