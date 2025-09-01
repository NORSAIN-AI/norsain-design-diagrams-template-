# NORSAIN Diagram Design Style Guide

## 🎯 Formål
Denne guiden definerer **beste praksis 2025** for hvordan NORSAIN designer og bruker diagrammer i draw.io (diagrams.net), Mermaid og andre visualiseringsverktøy. Målet er å sikre **konsekvent merkevare, lesbarhet og governance** i alle MAS-relaterte modeller.

---

## 📂 Struktur
- **Libraries (.library.xml):** Gjenbrukbare former og symboler (byggeklosser).
- **Templates (.drawio):** Ferdige maler (rammeverk for nye diagrammer).
- **Assets (SVG/PNG):** Q-symboler, ikoner og spesialgrafikk.
- **Style Guide (denne filen):** Fargepalett, fonter, linjestiler og navnestandarder.

---

## 🎨 Fargepalett

| Brukstype              | Primærfarge | Lys bakgrunn | Kant | Eksempel |
|-------------------------|-------------|--------------|------|----------|
| **Agent (Core)**        | Teal #00B9AE | #E6FFFA | #00B9AE | Planner, Worker |
| **Governance / Policy** | Rød #EF4444 | #FEE2E2 | #EF4444 | Policy Gate, Risk Node |
| **Data / Storage**      | Blå #3B82F6 | #E0E7FF | #3B82F6 | Datastore, VectorDB |
| **External System**     | Grå #9CA3AF | #F3F4F6 | #9CA3AF | API, Partner, IoT |
| **Monitor / Observer**  | Lilla #8B5CF6 | #EDE9FE | #8B5CF6 | Monitor Agent |
| **Scheduler / Control** | Oransje #F97316 | #FFEDD5 | #F97316 | Scheduler |
| **Human-in-the-loop**   | Grønn #10B981 | #D1FAE5 | #10B981 | Actor / External Human |

---

## ✍️ Typografi
- **Font:** Montserrat (Regular for tekst, Bold for titler).  
- **Størrelse:** 12–13 pt for standardformer, 14–16 pt for overskrifter.  
- **Farge:** #111827 (nesten svart) for tekst.

---

## ➡️ Linjestiler
| Type | Stil | Farge | Bruk |
|------|------|-------|------|
| **Sync** | Heltrukket pil, endArrow=block | #111827 | API-kall, direkte svar |
| **Async** | Stiplet pil, endArrow=open | #111827 | Event-meldinger, signaler |
| **Pub/Sub** | Oval pil | #3B82F6 | Topic/distribusjon |
| **Control** | Tykk pil | #EF4444 | Governance, avslag, blokkering |

---

## 🔗 Symboler – Q-Familien

NORSAIN sitt **Q-symbol** brukes som visuell signatur i alle diagrammer.

| Symbol | Bruk | Farge |
|--------|------|-------|
| **Q (Basic)** | Logo-stempel / watermark | Teal #00B9AE fyll, hvit Q |
| **Q-Core** | QuorumCore (ledger) | Teal bakgrunn, svart Q |
| **Q-Engine** | Motor/algoritmer | Teal + gear overlay |
| **Q-Sense** | Observasjon, sensor | Teal + eye overlay |
| **Q-Flow** | Prosessflyt | Teal + piler overlay |

Alle Q-symboler lagres som **SVG i assets/** og i et eget bibliotek `norsain-symbols.library.xml`.

---

## 🛠 Bibliotekstruktur
- **Core (`norsain-mas-core.library.xml`):** Agent, Event Bus, Queue, Datastore, Ledger, Policy Gate, Boundary.
- **Comm (`norsain-mas-comm.library.xml`):** Sync/Async piler, Pub/Sub, Broker, API Gateway, Webhook.
- **Extended (`norsain-mas-extended.library.xml`):** Monitor, Scheduler, Knowledge Base, Audit Log, Human-in-the-Loop.
- **Symbols (`norsain-symbols.library.xml`):** Q-symboler og varianter.

---

## 🖼 Maler
- **UML Sequence:** Agent-til-agent meldingsflyt.
- **BPMN Collaboration:** Pools/laner for parallelle prosesser.
- **C4 Context:** Oversikt over MAS og eksterne aktører.
- **C4 Container:** Inndeling av MAS i containere og tjenester.
- **State Machine:** Agentlivssyklus.
- **Deployment View:** GCP + Edge + On-Prem arkitektur.
- **Governance Workflow:** Policy gates, risk nodes, audit log.
- **Decision Matrix:** A/R/G/S-roller og ansvar.
- **Data Flow Diagram (DFD):** Hvordan data beveger seg i MAS.

---

## 📜 Navnekonvensjoner
- **Agenter:** `AG-[AREA]-[ROLE]-[ID]`  
- **Gateway/Decision:** `GW-[NAME]-[ID]`  
- **Datastrukturer:** `DS-[NAME]-[ID]`  
- **Symboler (Q):** `Q-[FAMILY]-[ID]`

Eksempel: `AG-NORTH-PLANNER-0001`, `DS-LEDGER-001`, `Q-ENGINE-001`.

---

## ✅ Beste praksis 2025
1. **Start alltid fra mal** – unngå å bygge fra blank canvas.
2. **Bruk kun NORSAIN-biblioteker** – sikrer farger, fonter og linjer.
3. **Legg til metadata-boks** (Eier, Dato, Versjon, Status, Kontakt) nederst.
4. **Merk sync/async tydelig** – unngå forvirring i flyt.
5. **Plasser Q-symbol** i hjørnet eller ved kjernekomponenter.
6. **Hold skalaen ren** – bruk C4 (Context → Container → Component) for nivådeling.
7. **Dokumentér endringer** i CHANGELOG.md når du oppdaterer bibliotek/maler.

---

## 📜 Dokumentkontroll
| Felt        | Verdi                  |
|-------------|------------------------|
| Eier        | Henrik Strand / NORSAIN |
| Sist oppdatert | 2025-09-01           |
| Godkjent av | –                      |
| Status      | Draft                  |
| Kontakt     | hs@norsain.com         |

