# Changelog – NORSAIN Draw.io Library

Alle vesentlige endringer i dette repoet logges her.  
Format: *Dato – Versjon – Endring – Kommentar*

---

## [v1.0.0] – 2025-09-01
### Added
- Opprettet repo-struktur `norsain-drawio-lib/` med mapper:
  - `libraries/`
  - `templates/`
  - `assets/svg/`
- Første bibliotek: `norsain-mas-core.library.xml`
  - Agent (Generic)
  - Agent (Role: A/R/G/S)
  - Event Bus
  - Queue
  - Datastore
  - Ledger (QuorumCore)
  - Policy Gate
  - Boundary / Trust Zone
- README.md filer lagt til på:
  - Root (`README.md`)
  - `libraries/README.md`
  - `templates/README.md`
  - `assets/svg/README.md`
- Dokumentkontroll: `VERSION.md`, `CHANGELOG.md`

---

## Planlagt [v1.1.0]
- Legge til `norsain-mas-comm.library.xml` (kommunikasjonsformer).
- Opprette maler:  
  - `template-mas-sequence.drawio`  
  - `template-mas-bpmn-collab.drawio`  
  - `template-c4-context-mas.drawio`
- Importere SVG-ikoner (agent, bus, ledger, datastore).
