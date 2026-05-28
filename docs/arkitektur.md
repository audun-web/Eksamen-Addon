## Arkitektur for LootLoggerClassic

### Formål
LootLoggerClassic er en klientnær løsning som registrerer loot-hendelser i World of Warcraft Classic, lagrer data lokalt og presenterer dem i et brukergrensesnitt.

### Komponenter
- `Core.lua`: Initialiserer addon og kobler sammen modulene.
- `Events.lua`: Mottar og behandler hendelser fra WoW API.
- `Database.lua`: Lagrer/henter loot-data i SavedVariables.
- `UI.lua`: Viser registrerte data til brukeren.
- `README.md` / `docs`: Dokumentasjon for drift, bruk og vedlikehold.

### Dataflyt
1. En loot-hendelse oppstår i klienten.
2. `Events.lua` fanger hendelsen.
3. Data valideres og struktureres.
4. `Database.lua` lagrer informasjonen lokalt.
5. `UI.lua` leser data og oppdaterer visning.

### Driftsarkitektur
Løsningen kjører lokalt i WoW-klienten (virtuell tjeneste i form av addon-moduler). Kildekode forvaltes i Git. Endringer testes i klient før release. Distribusjon skjer ved oppdatering av addon-filer.

### Driftstiltak
- Fast release-sjekkliste før ny versjon.
- Backup av kode via Git.
- Na
- Nå-situasjon: Prosjektet forvaltes i praksis av en utvikler uten formell rollemodell i publiseringsplattform.
- Planlagt ved publisering: Rollebasert tilgang for forvaltere (owner/maintainer/contributor) med minstetilgang.
- 2FA pa alle driftskontoer (CurseForge, Git og e-post) som kan publisere eller endre prosjektet.
- Gjestetilgang i CurseForge gjelder lesing/nedlasting og gir ikke administrative rettigheter.
- Plan for feilretting og rollback ved feil i ny versjon.



#### kompetansemål

beskrive komponenter i en driftsarkitektur
planlegge og dokumentere arbeidsprosesser og IT-løsninger
administrere/planlegge tilganger og rettigheter