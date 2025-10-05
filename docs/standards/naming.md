# Naming Standards

Formål: sikre konsistente, søkbare og versjonerbare navn for dokumentasjon og diagrammer i dette repoet.

## 1) Prinsipper
- Én fil = ett diagram.
- Bruk **konsistente segmenter**: nummer → kategori → navn → versjon.
- Ingen binær-artefakter i git (PNG/SVG rendres i CI).
- Følg NORSAIN sine konvensjoner for filnavn/eksport fra designmanualen. :contentReference[oaicite:0]{index=0}:contentReference[oaicite:1]{index=1}

---

## 2) Konvensjon (Mermaid `.mmd`)
**Filnavn (regex):**
^\d{2}[a-z0-9-]+[a-z0-9-]+_v\d+.\d+.mmd$

makefile
Kopier kode

**Mønster:**
NN_category_slug-name_vX.Y.mmd

markdown
Kopier kode
- `NN` = 2-sifret sorteringsnummer (`01–99`)
- `category` = én av: `governance` | `runbooks` | `systems` | `architecture`
- `slug-name` = korte, beskrivende ord (kebab-case, kun [a–z0–9-])
- `vX.Y` = semver for docs (major.minor)

**Sti:**
docs/diagrams/<category>/<filnavn>

markdown
Kopier kode

**Eksempler:**
- `docs/diagrams/governance/01_phase-decision-tree_v1.0.mmd`
- `docs/diagrams/governance/02_repo-lifecycle-map_v1.0.mmd`
- `docs/diagrams/architecture/10_pr-flow-phase3_v1.1.mmd`
- `docs/diagrams/runbooks/20_incident-flow_v1.0.mmd`

> Tips: Nummeret (`NN`) styrer leserekkefølge i lister/README uten å måtte bygge TOC.

---

## 3) Konvensjon (draw.io `.drawio`)
**Filnavn (regex):**
^\d{2}[a-z0-9-]+[a-z0-9-]+_v\d+.\d+.drawio$

markdown
Kopier kode

**Eksempler:**
- `docs/diagrams/runbooks/25_release-pipeline_v1.0.drawio`

**Eksport:** SVG/PNG håndteres av CI (artefakter). Ikke commit binærfiler til git. :contentReference[oaicite:2]{index=2}

---

## 4) Design & eksport (speil av designmanual)
Når repoet refererer til logoer/brand (andre repoer):
- **Figma → Frames:** `NN_<produkt>_logo_<variant>` (eks: `01_qtwin_logo_full_pos`)  
- **Eksport:** Figma legger endelse automatisk → `01_qtwin_logo_full_pos.svg`, `.png`, `@2x.png`, `.pdf`  
- **Repo-struktur (brand assets):**
assets/logos/<produkt>/{digital|print}/
assets/social/<produkt>/

yaml
Kopier kode
Dette følger **Appendiks A** (filnavn) og **D** (eksport/dimensjoner). :contentReference[oaicite:3]{index=3}:contentReference[oaicite:4]{index=4}

---

## 5) Forbudte mønstre / reserved words
- Ikke bruk `final`, `siste`, `endelig`, `ny`, `copy` i filnavn.
- Ikke mellomrom, æøå eller store bokstaver.
- Ikke bland `_` og `-` vilkårlig: **underscore skiller segmenter**, **kebab-case** inni segmenter.
- Ikke commit binær-eksporter (PNG/SVG/PDF) fra Mermaid/draw.io – bruk CI-artefakter. :contentReference[oaicite:5]{index=5}

---

## 6) Versjonering (docs)
- Øk **minor** når du gjør innholdsendringer som ikke bryter referanser (`v1.0 → v1.1`).
- Øk **major** ved større omstruktureringer/navigasjonsendringer (`v1.x → v2.0`).
- Release-tags i repo bruker samme semver (`v1.0.0`) med release-notater. :contentReference[oaicite:6]{index=6}

---

## 7) Metadata i filer (anbefalt toppblokk)
Legg i starten av `.mmd`:
%% Title: <Kort tittel>
%% Owner: <Navn> (<epost>)
%% Version: vX.Y

yaml
Kopier kode
Eier/kontakt bør samsvare med governance-kravene. :contentReference[oaicite:7]{index=7}

---

## 8) Grenser & PR-navn (valgfri, men anbefalt)
- **Branches:** `docs/<category>/<kort-slug>`  
  Eks: `docs/governance/phase-decision-tree`
- **PR-tittel:** `[docs] <Category>: <Kort tittel>`  
  Eks: `[docs] Governance: Phase decision tree`

---

## 9) Hurtigsjekk (før PR)
- Fil ligger under riktig mappe: `docs/diagrams/<category>/`
- Filnavn matcher regex (se §2/§3)
- Init-blokk med NORSAIN-tema i `.mmd`
- Ingen PNG/SVG committed
- CI "Validate Mermaid diagrams" = grønn
