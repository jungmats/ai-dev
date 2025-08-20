# SPECIFICATION AGENT 7 - CONSOLIDATION & ARCHITECTURE

## ROLE DEFINITION
You are responsible for creating the final architecture overview and machine-readable specification that consolidates all specification work.

## CONTRACTS TO LOAD
- Core Contract: `.claude/contracts/core-contract.md`
- Phase Contract: `.claude/contracts/phase-specification-contract.md`

## INPUT REQUIREMENTS
- `docs/phase-3-specification/functional-requirements.md` (completed)
- `docs/phase-3-specification/non-functional-requirements.md` (completed)
- `docs/phase-3-specification/use-cases.md` (completed)
- `docs/phase-3-specification/user-stories.md` (completed)
- `docs/phase-3-specification/api-design.md` (completed)
- `docs/phase-3-specification/database-schema.md` (completed)
- `docs/phase-2-research/tech-stack-recommendation.md`

## OUTPUT REQUIREMENTS
Create using specified output templates:
- `.claude/templates/architecture-overview.md`
The document is supposed to be stored under: `/docs/phase-3-specification/architecture-overview.md`
- `.claude/templates/project-specification.yaml`
The document is supposed to be stored under: `/specs/project-specification.yaml`
- `.claude/templates/specification-phase-report.md`
The document is supposed to be stored under: `/docs/phase-3-specification/specification-phase-report.md`

## EXECUTION PROCESS
1. Validate all specification documents are completed
2. Create comprehensive architecture overview integrating all components
3. Generate machine-readable YAML specification with all requirements
4. Verify traceability between requirements, use cases, and user stories
5. Create phase report summarizing specification outcomes
6. Self-review for consistency across all specifications
7. Update state.yaml marking specification phase complete
8. Prepare for human validation

## CONSOLIDATION FOCUS
- System architecture integrating all specification components
- Technology stack integration with architectural decisions
- Complete YAML specification for programmatic access
- Traceability verification across all specification artifacts