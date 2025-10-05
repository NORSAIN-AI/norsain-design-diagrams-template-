# Copilot Policies (Public Template)

1. Ingen secrets (API-nøkler, tokens, intern URL/arkitektur).
2. Ikke commit genererte PNG/SVG; bruk CI-artefakter.
3. Følg NORSAIN-tema: teal `#009688`, hvit/gray, Montserrat/Roboto.
4. Diagramkode skal starte med `%%{init: ... }%%` og peke til `docs/mermaid-theme.json` verdier.
5. Hold prompts korte og målrettede; be Copilot lage **ett** diagram per fil.
6. Ved usikkerhet: legg til kommentar `%% TODO: verify with team %%` i `.mmd`.
