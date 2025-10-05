# Contributing – docs & diagrams

## Slik gjør du det
1. Lag branch
2. Kopiér `docs/diagrams/_template.mmd`
3. Skriv diagrammet (hold én fil = ett diagram)
4. Kjør lokalt (valgfritt):
npm i -g @mermaid-js/mermaid-cli@10.9.1
mmdc -i docs/diagrams/.../my.mmd -o preview.svg -C docs/mermaid-theme.json

markdown
Kopier kode
5. Send PR – CI validerer og (i F3) rendrer artefakter

## PR-sjekkliste
- [ ] Init-tema brukt (øverst i `.mmd`)
- [ ] Ingen committed PNG/SVG
- [ ] Filnavn følger standarden
- [ ] CI grønn
- [ ] (F3) Signed commits

## Do/Don't
- ✅ Klare, korte noder og piler
- ✅ Bruk NORSAIN-tema (farger/typografi)
- ❌ Lange tekstavsnitt i noder
- ❌ Egendefinerte farger uten behov
