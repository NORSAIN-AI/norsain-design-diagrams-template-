# Copilot Prompts – Mermaid (.mmd)

## Flowchart (prosessflyt)
- "Lag flowchart for governance-faser: G0-G4 med beslutningspunkter. Bruk NORSAIN-teal og legg til classDef for hver fase."
- "Tegn PR-prosess: Fork → Branch → Commit → Push → PR → Review → Merge. Vis også rollback-muligheter."

## Sequence diagram (meldingsflyt)
- "Lag sequence diagram for API-kall: Client → Gateway → Service → Database → Response. Inkluder error-håndtering."
- "Tegn bruker-autentisering: Login → Token → Validate → Access/ Deny med tidslinje."

## State diagram (tilstandsmodell)
- "Lag state diagram for deployment: Plan → Build → Test → Deploy → Monitor → Rollback. Vis også failed states."
- "Tegn dokument-livssyklus: Draft → Review → Approved → Published → Archived med mulige tilbakeganger."

## Gantt chart (tidsplan)
- "Lag Gantt chart for prosjekt-faser: Research, Design, Development, Testing, Deployment. 3 måneder totalt."
- "Tegn sprint-plan: Sprint Planning → Development → Testing → Review → Retrospective. 2 uker per sprint."

## Pie chart (fordeling)
- "Lag pie chart over feil-kategorier: Network 30%, Code 40%, Config 20%, Other 10%. NORSAIN-farger."
- "Tegn fordeling av arbeid: Planning 20%, Development 50%, Testing 20%, Documentation 10%."

## Generelle tips
- Start alltid med: `%%{init: { "theme": "base", "themeVariables": { ... }}}%%`
- Bruk `classDef` for konsistente farger og stiler
- En diagram per fil – hold det enkelt og fokuserte
- Test lokalt med `mmdc` før commit
