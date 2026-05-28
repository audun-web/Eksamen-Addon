# LootLoggerClassic

LootLoggerClassic logger loot du får i WoW Classic Era og lagrer historikk lokalt.

Addonen kan vise loot i et eget vindu med søk, filter, statistikk og minimap-knapp.

## Versjon

1.0

## Hva den gjør

- Logger loot når du får item i chat (`CHAT_MSG_LOOT`)
- Lagrer item, antall, tid, dato og zone i `SavedVariables`
- Viser loot i scrollable UI
- Har rarity-filter (All, Common, Uncommon, Rare, Epic)
- Har søk på item-navn
- Viser total loot og session loot
- Har draggable hovedvindu
- Har minimap-knapp for å åpne/lukke UI

## Kommandoer

- `/lootlogger` åpner/lukker hovedvinduet
- `/llclear` tømmer loot-databasen