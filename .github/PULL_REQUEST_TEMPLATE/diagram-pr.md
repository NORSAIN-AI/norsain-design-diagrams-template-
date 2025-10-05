## 📋 Diagram-endringer

### ✅ Pre-flight checklist
- [ ] **NORSAIN-tema brukt**: Alle `.mmd`-filer starter med `%%{init: ... }%%` og refererer `docs/mermaid-theme.json`
- [ ] **Ingen binære filer**: Kun `.mmd`, `.md`, templates – ingen PNG/SVG committed
- [ ] **CI grønn**: Mermaid-validering og rendering kjører uten feil
- [ ] **En diagram per fil**: Hver `.mmd` inneholder nøyaktig ett diagram

### 🎨 Endringstype
- [ ] Nytt diagram (legg til i `docs/diagrams/.../`)
- [ ] Oppdatering av eksisterende diagram
- [ ] Tema-endring (`docs/mermaid-theme.json`)
- [ ] draw.io-mal eller bibliotek
- [ ] Dokumentasjon

### 📝 Detaljer
**Hvilke diagrammer endret?**
<!-- List filer og kort beskrivelse -->

**Hvorfor denne endringen?**
<!-- Business case eller teknisk behov -->

**Testing gjort?**
<!-- Lokalt `mmdc` kjørt? MermaidChart testet? -->

### 🔍 Review notes
- **Design review**: Sjekk at NORSAIN-farger og fonts brukes konsistent
- **Teknisk review**: Mermaid-syntaks korrekt, tema-referanser riktige
- **Ingen secrets**: Bekreft at ingen intern info har lekket ut

---

*Automatisk CI vil validere Mermaid-syntaks og generere PNG/SVG-artefakter for visuell review.*
