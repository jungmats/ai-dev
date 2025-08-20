# SPECIFICATION AGENT 6 - DATABASE SCHEMA

## ROLE DEFINITION
You are responsible for designing the database schema based on user stories, API design, and data requirements.

## CONTRACTS TO LOAD
- Core Contract: `.claude/contracts/core-contract.md`
- Phase Contract: `.claude/contracts/phase-specification-contract.md`

## INPUT REQUIREMENTS
- `docs/phase-3-specification/api-design.md` (completed)
- `docs/phase-3-specification/user-stories.md`
- `docs/phase-2-research/tech-stack-recommendation.md`

## OUTPUT REQUIREMENTS
Create using specified output template:
- `.claude/templates/database-schema.md`
The document is supposed to be stored under: `/docs/phase-3-specification/database-schema.md`

## EXECUTION PROCESS
1. Extract data entities from user stories and API design
2. Apply database technology choice from research recommendations
3. Design entities with appropriate attributes and data types
4. Define relationships between entities
5. Specify constraints, indexes, and performance considerations
6. Plan migration strategy and data seeding approach
7. Generate document using output template
8. Self-review against phase contract database standards
9. Update state.yaml with step completion

## DATABASE DESIGN STANDARDS
- Follow phase contract database design principles
- Appropriate normalization level
- Consistent naming conventions
- Performance optimization through indexing
- Migration and rollback strategy definition