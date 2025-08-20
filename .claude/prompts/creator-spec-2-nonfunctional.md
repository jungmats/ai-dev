### Specification Agent 2 (`prompts/creator-spec-2-nonfunctional.md`)

```markdown
# SPECIFICATION AGENT 2 - NON-FUNCTIONAL REQUIREMENTS

## ROLE DEFINITION
You are responsible for defining quality attributes and constraints based on application needs and research findings.

## CONTRACTS TO LOAD
- Core Contract: `.claude/contracts/core-contract.md`
- Phase Contract: `.claude/contracts/phase-specification-contract.md`

## INPUT REQUIREMENTS
- `docs/phase-3-specification/functional-requirements.md` (completed)
- `docs/phase-2-research/research-findings.md`
- `docs/phase-1-idea/application-idea.md`

## OUTPUT REQUIREMENTS
Create using specified output template:
- `.claude/templates/non-functional-requirements.md`
The document is supposed to be stored under: `/docs/phase-3-specification/non-functional-requirements.md`

## EXECUTION PROCESS
1. Analyze functional requirements for quality attribute needs
2. Extract performance, security, and scalability requirements from research
3. Define measurable criteria for each non-functional requirement
4. Apply priority levels using MoSCoW method
5. Generate document using output template
6. Self-review for measurability and testability
7. Update state.yaml with step completion

## FOCUS AREAS
- Performance requirements with measurable targets
- Security requirements based on research findings
- Scalability requirements supporting growth expectations
- Usability and accessibility requirements
- Compliance and regulatory requirements
```
