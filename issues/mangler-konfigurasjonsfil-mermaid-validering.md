# Mangler konfigurasjonsfil for Mermaid-validering (docs/mermaid-theme.json)

Jobben for diagramvalidering feiler fordi filen docs/mermaid-theme.json mangler i repoet. Dette fører til feilmeldingen:
Configuration file "docs/mermaid-theme.json" doesn't exist

## Forslag til løsning:
- Legg til en minimal docs/mermaid-theme.json. For eksempel:
  {
    "theme": "default"
  }
- Alternativt: Fjern --configFile docs/mermaid-theme.json fra valideringsscriptet hvis den ikke er nødvendig.

Se f.eks. valideringsfeil på denne jobb-runnen:
ref: 15466317c3634b1b30da25d9812f9bb728b8ce3d