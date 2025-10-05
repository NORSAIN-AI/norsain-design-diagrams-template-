# Diagram Style – Mermaid

## Tema
- Bruk `docs/mermaid-theme.json` via `%%{init: ... }%%`
- Font: Montserrat (titler), Roboto (tekst)
- Primærfarge: Teal `#009688`

## Flowchart
- **Retning:** TB for beslutningstre, LR for prosesser
- **Noder:** avrundede hjørner; korte setninger
- **ClassDef:** minst `question`, `ok`, `warn`
- **Piler:** standard; unngå kryssende linjer

## SequenceDiagram
- `autonumber`
- Aktører: kort og funksjonell tittel
- "Happy path" først; feilhåndtering som noter

## ClassDiagram
- Kun sentrale klasser/relasjoner
- Ikke over-modellér – vis nøkkelrelasjoner

## Noter
- Bruk notes for forutsetninger og antakelser
