# NORSAIN Design Diagrams Template - AI Agent Instructions

## Project Overview
This repository contains Draw.io library templates and assets for creating consistent NORSAIN Multi-Agent System (MAS) diagrams. Focus on agent orchestration, neural networks, and governance workflows using standardized visual components.

## Architecture & Structure
- **Libraries** (`.library.xml`): Reusable Draw.io shapes organized by function:
  - `norsain-mas-core.library.xml`: Agents, event buses, datastores, policy gates
  - `norsain-mas-comm.library.xml`: Communication patterns (sync/async arrows, pub/sub)
  - `norsain-mas-extended.library.xml`: Advanced components (monitors, schedulers, knowledge bases)
  - `norsain-symbols.library.xml`: Q-family branding symbols
- **Assets** (`assets/`): Visual elements (SVG/PNG) for Q-symbols and icons
- **Templates** (`templates/`): Planned Draw.io template files for common diagram types
- **Style Guide** (`docs/norsain_diagram_style_guide.md`): Defines colors, fonts, naming conventions

## Key Conventions & Patterns

### Visual Design System
- **Colors**: Teal (#00B9AE) for agents, Red (#EF4444) for governance, Blue (#3B82F6) for data
- **Typography**: Montserrat font family (Regular for text, Bold for titles)
- **Q-Branding**: Use Q-symbols (`assets/svg/q-basic.svg`) as visual signatures
- **Line Styles**: Solid arrows for sync calls, dashed for async events, oval for pub/sub

### Naming Conventions
- **Agents**: `AG-[AREA]-[ROLE]-[ID]` (e.g., `AG-NORTH-PLANNER-0001`)
- **Gateways**: `GW-[NAME]-[ID]`
- **Data Structures**: `DS-[NAME]-[ID]` (e.g., `DS-LEDGER-001`)
- **Q-Symbols**: `Q-[FAMILY]-[ID]` (e.g., `Q-ENGINE-001`)

### Diagram Types (C4 Architecture Approach)
- **Context**: High-level MAS overview with external actors
- **Container**: MAS component breakdown (agents, buses, datastores)
- **Component**: Detailed agent interactions and data flows
- **Sequence**: Agent-to-agent message flows with sync/async indicators

## Development Workflow

### Creating New Diagrams
1. Start from templates in `templates/` directory
2. Import relevant libraries via Draw.io's library import feature
3. Apply style guide colors and fonts consistently
4. Add metadata box (Owner, Date, Version, Status, Contact) at bottom
5. Place Q-symbol watermark in corner or at core components

### Library Development
- Edit `.library.xml` files directly (JSON array of shape definitions)
- Each shape includes XML styling and dimensions
- Test shapes by importing into Draw.io
- Follow existing color schemes and naming patterns

### Asset Management
- Store Q-family symbols as SVG in `assets/svg/`
- Use PNG format for complex graphics in `assets/jpeg/`
- Reference assets consistently across libraries

## Quality Standards
- Use only NORSAIN libraries (ensures brand consistency)
- Mark sync/async flows explicitly to avoid confusion
- Maintain C4 architecture levels for scalability
- Include governance elements (policy gates, risk nodes) in MAS diagrams

## Common Patterns
- **Agent Orchestration**: Use event buses for decoupling, policy gates for governance
- **Data Flow**: Blue-colored datastores and ledgers (QuorumCore integration)
- **External Integration**: Gray boundaries for external systems and APIs
- **Monitoring**: Purple monitor agents for observability

## File Organization
- Keep libraries focused by functional area (core, comm, extended, symbols)
- Store templates as `.drawio` files in `templates/` directory
- Document changes in `CHANGELOG.md` with version releases
- Update `VERSION.md` for current release tracking</content>
<parameter name="filePath">/home/hs/code/norsain-design-diagrams-template-/.github/copilot-instructions.md
