# Policy Map – Kontroller pr. fase

| Kontroll                         | F1 | F2 | F3 |
|----------------------------------|:--:|:--:|:--:|
| PR påkrevd til `main`           | ☐  | ☑︎ | ☑︎ |
| Reviews (CODEOWNERS)             | ☐  | ☑︎ (≥1) | ☑︎ (≥2) |
| Status checks (Validate .mmd)    | ☐  | ☑︎ | ☑︎ |
| Status checks (Render artefakter)| ☐  | ☐  | ☑︎ |
| Signed commits                   | ☐  | ☐  | ☑︎ |
| Protected tags (`v*`)            | ☐  | ☐  | ☑︎ |
| Dependabot (actions)             | ☑︎ | ☑︎ | ☑︎ (strengt) |
| Secret scanning + Push Protection| ☑︎ | ☑︎ | ☑︎ |
| PNG/SVG committed i git          | ✗  | ✗  | ✗ (kun CI) |

**Prinsipp:** *minst mulig støy*, men *tydelige krav* når risiko øker.
