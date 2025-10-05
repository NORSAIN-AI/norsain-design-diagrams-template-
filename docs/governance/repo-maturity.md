# Repo Maturity – Fase 1/2/3

Formålet er å stramme inn kontrollene i takt med risiko og koblinger (progressive checks).

## Fase 1 – Greenfield
**Typisk:** nytt repo, ingen secrets, eksperimenter.  
**Krav:**
- Push til `main` er ok, men bruk PR for større endringer
- Prettier/markdownlint i editor (format on save)
- `.env.example` og `.gitignore` fra start
- Ingen secrets i repo (kun eksempelverdier)
- Dependabot (actions) aktiv – ingen auto-merge

## Fase 2 – Team
**Typisk:** flere utviklere, Actions, test-deploy.  
**Krav:**
- Branch protection for `main`: PR kreves, ≥1 review
- Status checks: **Validate Mermaid diagrams** (må være grønn)
- 2FA på org-nivå anbefales
- CODEOWNERS på `/docs/**`
- Ukentlig GHA-oppdatering (Dependabot)

## Fase 3 – Infra/Prod
**Typisk:** diagrameksempler som modellerer prod-kritiske prosesser.  
**Krav:**
- Branch protection: 2 reviews (CODEOWNERS), signed commits
- Status checks: **Validate** + **Render** (artefakter for review)
- Protected tags `v*`, release-notater
- Streng "no binaries in git" (PNG/SVG kun som CI-artefakter)
