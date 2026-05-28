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


-- funksjon som hjelper med å telle antall items spiller har plukket opp

function GetTotalItemsLooted()
    local total = 0

    -- summerer quantity for alle entries i databasen
    for i, entry in ipairs(LootLoggerClassicDB.loot) do
        total = total + (entry.quantity or 1) -- legger til en eller total menge items lootet in i total
    end

    return total
end
