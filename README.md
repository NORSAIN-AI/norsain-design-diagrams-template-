# NORSAIN Design Diagrams Template

Dette repoet er NORSAIN sin **standardmal for visuelle artefakter**:
Mermaid-diagrammer, draw.io-maler og design-tokens som sikrer konsistent stil, høy lesbarhet og enkel gjenbruk på tvers av prosjekter.

> Bruksområder: governance, runbooks, systemkart, PR-flyt, arkitektur og dashboards.

---

## 🚀 Kom i gang

**Bruk som mal**

1. Klikk **Use this template** (øverst i GitHub).
2. Gi prosjektet navn og opprett repo.
3. (Valgfritt) Åpne i VS Code **Dev Container** — alt du trenger for lokalt preview er klart.

**Lokal oppsett (valgfritt)**

```bash
# Installer pre-commit hooks for automatisk kvalitetskontroll
pip install pre-commit
pre-commit install

# Installer Mermaid CLI for lokal validering
npm i -g @mermaid-js/mermaid-cli@10
```

**Lokal forhåndsvisning (uten container)**

```bash
npm i -g @mermaid-js/mermaid-cli@10
mmdc -i docs/diagrams/governance/phase_decision_tree.mmd \
     -o preview.svg \
     -C docs/mermaid-theme.json
```

**Åpne i MermaidChart fra repo**

```markdown
**Eksempel:** `https://www.mermaidchart.com?import=https://raw.githubusercontent.com/NORSAIN-AI/norsain-design-diagrams-template-/main/docs/diagrams/...`
```

---

## 📁 Struktur

```
docs/
  diagrams/
    _template.mmd
    governance/
      phase_decision_tree.mmd
    runbooks/
    systems/
  mermaid-theme.json
drawio/
  NORSAIN-DrawIO-Theme.xml
  libraries/
    (egne figurbibliotek)
.github/
  workflows/
    validate-diagrams.yml   # validerer .mmd i PR
    render-diagrams.yml     # rendrer PNG/SVG som artefakter i PR
```

* **Mermaid**: `.mmd`-filer under `docs/diagrams` (en fil = ett diagram).
* **Tema**: `docs/mermaid-theme.json` gir NORSAIN-farger og font (Montserrat/Roboto).
* **draw.io**: importer `drawio/NORSAIN-DrawIO-Theme.xml` via *Theme → Custom → Import*.

---

## ✍️ Slik legger du til et nytt diagram

1. Kopiér `docs/diagrams/_template.mmd` til riktig mappe.
2. Skriv diagrammet (flowchart, sequence, class, state, …).
3. Commit og push – PR-en din vil:

   * ✅ **validere** syntaks (mmdc)
   * 🖼️ **rendre** PNG/SVG som artefakter for enkel review

**Eksempel** (fasesjekk i governance):

```mermaid
%%{init: { "theme": "base", "themeVariables": {
  "fontFamily": "Montserrat, Roboto, Arial, sans-serif",
  "textColor": "#212121",
  "primaryColor": "#E0F2F1",
  "primaryBorderColor": "#009688",
  "lineColor": "#009688",
  "secondaryColor": "#F5F5F5"
}}}%%
flowchart TB
  classDef q fill:#E0F2F1,stroke:#009688,stroke-width:1.5px,rx:8,ry:8,color:#212121
  classDef ok fill:#E6FAEF,stroke:#00C853,stroke-width:1.5px,rx:6,ry:6,color:#212121
  classDef warn fill:#FFF8E1,stroke:#FF6D00,stroke-width:1.5px,rx:6,ry:6,color:#212121

  Q1{{Har repoet secrets / tilkoblinger?}}:::q
  Q2{{Er flere utviklere aktive (PR eller CI)?}}:::q
  Q3{{Har repo prod-ansvar eller sky-tilgang?}}:::q
  Q4{{Kritikalitet medium eller høy?}}:::q

  Q1 -- Nei --> Q2
  Q1 -- Ja --> F2[Fase 2]:::ok
  Q2 -- Nei --> F1[Fase 1]:::ok
  Q2 -- Ja --> Q3
  Q3 -- Nei --> F2b[Fase 2]:::ok
  Q3 -- Ja --> Q4
  Q4 -- Lav --> F2c[Fase 2]:::ok
  Q4 -- Medium/høy --> F3[Fase 3]:::warn
```

---

## ⚙️ CI/CD (offentlig, trygg og enkel)

* **Validate Mermaid diagrams**: sjekker alle `.mmd` i PR; feiler ved syntaksfeil.
* **Render Mermaid diagrams**: genererer `.svg` og `.png` som PR-artefakter for visuell review.
* Ingen secrets, ingen deploy, minimal permissions. Sikkert for PR fra forks.

**Public hygiene:** PNG/SVG-artefakter committes aldri – de bygges av CI og lastes ned fra PR-artifacts for review.

---

## 🎨 Design & tema

* **Farger**: NORSAIN Teal `#009688` med nøytrale gråtoner og hvit bakgrunn.
* **Font**: Montserrat (overskrifter), Roboto (brødtekst).
* **Bruk**: alle nye `.mmd` bør starte med tema fra `docs/mermaid-theme.json` eller `_template.mmd`.
* **draw.io**: importer temaet for samme visuelle uttrykk i runbooks/arkitektur.

---

## 🤖 GitHub Copilot

GitHub Copilot er konfigurert for å hjelpe med diagram-generering og dokumentasjon.

* **Instruksjoner**: Se `.github/instruks.md` for oppsett og bruk.
* **Prompt-maler**: Se `copilot/` for ferdige oppskrifter til Mermaid og draw.io.
* **Policy**: Følg `COPILOT-POLICY.md` for sikker og konsistent bruk.

---

## 🔐 Sikkerhet (public template)

* Ingen secrets eller nøkler i repo eller workflows.
* PR fra forks kjører uten skriverettigheter.
* Anbefalte repo-innstillinger:

  * Branch protection på `main` (PR kreves + status checks)
  * Secret scanning + Push Protection
  * Dependabot alerts (for actions)

Se også `SECURITY.md` for ansvarlig varsling.

---

## 👥 Bidrag

1. Fork repoet og opprett branch.
2. **Sett opp pre-commit hooks**: `pip install pre-commit && pre-commit install`
3. Legg `.mmd` under `docs/diagrams/...` (én fil per diagram).
4. Kjør lokalt `mmdc` for rask feedback (se "Kom i gang").
5. Commit – pre-commit validerer automatisk.
6. Send PR – CI validerer og rendrer automatisk.

**Pre-commit kontrollerer:**
- ✅ Mermaid-syntaks og tema-bruk
- ✅ Ingen binære filer i `docs/diagrams/`
- ✅ Markdown og YAML formatering
- ✅ NORSAIN tema-initialisering i alle `.mmd`-filer

**PR-krav for diagrammer:**
- Bruk PR-mal i `.github/PULL_REQUEST_TEMPLATE/diagram-pr.md`
- Følg sjekkliste: tema brukt ✓, ingen binærer ✓, CI grønn ✓
- `/docs/**` krever review fra design-team (CODEOWNERS)
- Stale reviews avvises automatisk ved nye commits

Retningslinjer: se `CONTRIBUTING.md`.

---

## 🧩 Lenkemal til MermaidChart

```markdown
[🧭 Åpne i MermaidChart](https://www.mermaidchart.com?import=https://raw.githubusercontent.com/<ORG>/<REPO>/<BRANCH>/docs/diagrams/<sti-til-fil>.mmd)
```

Bytt ut `<ORG>`, `<REPO>`, `<BRANCH>` og filstien.

---

## 📜 Lisens

Velg ønsket lisens (f.eks. **MIT**). Legg filen som `LICENSE` i repoet.

---

## 📫 Kontakt

**Owner:** Henrik Strand · [hs@norsain.com](mailto:hs@norsain.com)

---

Trenger du også en kort `CONTRIBUTING.md` og `SECURITY.md` som matcher denne? Roper du, så får du dem klare til innliming.
