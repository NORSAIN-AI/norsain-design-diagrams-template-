# Change Control – PR & Release

## PR-løp
1. Feature-branch → PR mot `main`
2. CI: Validate (alltid) og Render (F3) må være grønn
3. Review:
   - F2: ≥1 godkjenning (CODEOWNERS for `/docs/**`)
   - F3: ≥2 godkjenninger, signed commits
4. Merge → slett branch

## Versjon & release
- Tagges `vMAJOR.MINOR.PATCH` (eks. `v1.0.0`)
- Release-notater: hva endret, påvirkning, skjermbilder (lenk til CI-artefakt)
- **Aldri** commit PNG/SVG – referér CI-artefakter

## Hotfix (kun docs-feil)
- Liten retting kan gå direkte via PR med hurtig review
- Ny patch-tag (eks. `v1.0.1`)
