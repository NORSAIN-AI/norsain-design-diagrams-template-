# Bruk av GitHub Copilot i dette repoet

Dette er et offentlig *template-repo*. Copilot er aktivert for å hjelpe med:
- Mermaid (.mmd): generere/rydde opp i diagrammer
- draw.io: beskrive former/tekst og foreslå struktur (tekstlig assistanse)
- Markdown/YAML: README, workflows, policy-snutter

## Slik aktiverer du
1) Åpne repoet i VS Code (devcontainer anbefales).
2) Logg inn i **GitHub** i VS Code (Account-ikonet).
3) Bekreft at **Copilot** og **Copilot Chat** er aktiv (Extensions).

## Retningslinjer (public)
- **Ingen hemmeligheter** i prompts, commits eller diagrammer.
- Ikke lim inn intern/konfidensiell kode; Copilot-prompt sendes til GitHub-tjenesten.
- Diagram-artefakter (PNG/SVG) **committes ikke** – de bygges av CI.
- Bruk NORSAIN-tema:
  - Teal `#009688`, nøytrale gråtoner/hvit
  - Font: Montserrat/Roboto
- Bruk alltid `docs/mermaid-theme.json` via `%%{init:...}%%` i `.mmd`.

## Hurtigtaster
- **Inline forslag**: `Tab`
- **Åpne Copilot Chat**: `Ctrl/Cmd+I` (eller Command Palette → "Copilot Chat")
- **Be om kode/diagram**: Marker tekst → `Ask Copilot`

Se også `copilot/` for prompt-maler og kontekst.
