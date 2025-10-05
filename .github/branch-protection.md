# Branch Protection Rules – Anbefalt oppsett

## 📋 Obligatorisk for `main` branch

### ✅ Require pull request reviews
- [x] **Required approving reviews**: 1 (for `/docs/**` endringer)
- [x] **Dismiss stale pull request approvals when new commits are pushed**
- [x] **Require review from Code Owners** (aktiveres automatisk med CODEOWNERS-fil)

### ✅ Require status checks to pass
- [x] **Require branches to be up to date before merging**
- [x] Status checks som må passere:
  - `validate-diagrams` (Mermaid syntaks)
  - `render-diagrams` (PNG/SVG generering)

### ✅ Include administrators
- [x] **Include administrators**: Ja (owners må også følge reglene)

### ❌ Restrict pushes
- [ ] **Restrict pushes that create matching branches**: Nei (åpne for contributors)

## 🎯 Hvorfor disse reglene?

### Dismiss stale reviews: ON
Diagrammer endres ofte i **små steg** under review:
- Fargejusteringer, tekst-endringer, layout-tweaks
- Nye commits gjør ofte tidligere approvals irrelevante
- Tvinger re-review av endelige versjoner

### Code Owners enforcement
- `/docs/**` krever review fra `@NORSAIN-AI/design-maintainers`
- Sikrer at design-kvalitet opprettholdes
- Automatisk assignment til riktige reviewers

### Status checks
- Mermaid-validering fanger syntaksfeil før merge
- PNG/SVG-generering gir visuell confidence
- CI kjører på alle PRs, inkludert fra forks

## 🔧 Oppsett i GitHub

1. Gå til **Settings** → **Branches** → **Add rule**
2. **Branch name pattern**: `main`
3. Konfigurer som beskrevet over
4. **Save changes**

## 📝 For contributors

Med disse reglene:
- ✅ Får automatisk riktig reviewer assignment
- ✅ CI validerer diagrammer automatisk
- ✅ Stale reviews avvises ved nye commits
- ✅ Kvalitetssikring av design og kode
