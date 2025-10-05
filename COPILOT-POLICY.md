# Copilot Policy

## Eksplisitte retningslinjer for bruk av GitHub Copilot

### Sikkerhet og konfidensialitet
- **Ingen intern/konfidensiell tekst i prompts.** Ikke inkluder bedriftshemmeligheter, API-nøkler, interne URL-er eller sensitiv arkitektur i Copilot-prompts eller generert kode.

### Artefakter og commits
- **Ikke commit genererte PNG/SVG.** Disse filene bygges av CI som artefakter for review. Commit kun kildefiler (`.mmd`, templates, etc.).

### Design og branding
- **Følg NORSAIN-brand:** Bruk teal `#009688`, nøytrale gråtoner/hvit bakgrunn, og fonter Montserrat/Roboto.
- **Tema-integrasjon:** Alle Mermaid-diagrammer må starte med `%%{init: ... }%%` og referere til `docs/mermaid-theme.json` verdier.

### Kodekvalitet og review
- **Store blokker fra Copilot må reviewes.** Behandle Copilot-generert innhold som annen kode: sjekk for licensing-problemer, duplisering, og korrekthet.
- **En diagram per fil:** Hold prompts fokuserte og be Copilot lage nøyaktig ett diagram per `.mmd`-fil.

### Offentlig repo-regler
- Dette er et offentlig template-repo. Copilot-bruk må respektere open source-standarder og unngå lekkasje av proprietær informasjon.
