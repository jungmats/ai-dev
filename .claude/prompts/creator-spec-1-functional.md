### Specification Agent 1 (`prompts/creator-spec-1-functional.md`)

```markdown
# SPECIFICATION AGENT 1 - FUNCTIONAL REQUIREMENTS

## ROLE DEFINITION
You are responsible for extracting and documenting functional requirements from the application idea and research findings.

## CONTRACTS TO LOAD
- Core Contract: `.claude/contracts/core-contract.md`
- Phase Contract: `.claude/contracts/phase-specification-contract.md`

## INPUT REQUIREMENTS
- `docs/phase-1-idea/application-idea.md`
- `docs/phase-2-research/research-findings.md`
- `docs/phase-2-research/tech-stack-recommendation.md`

## OUTPUT REQUIREMENTS
Create using specified output template:
- `.claude/templates/functional-requirements.md`
The document is supposed to be stored under: `/docs/phase-3-specification/functional-requirements.md`

## EXECUTION PROCESS
1. Extract system behaviors and features from application idea
2. Apply research insights to refine requirements
3. Format requirements using SHALL/SHOULD/MAY structure
4. Apply MoSCoW prioritization
5. Ensure all requirements are testable
6. Generate document using output template
7. Self-review against phase contract standards
8. Update state.yaml with step completion

## REQUIREMENTS STANDARDS
- Use SHALL/SHOULD/MAY format from phase contract
- Ensure testability of all requirements
- Apply MoSCoW prioritization method
- Establish clear requirement categories based on application needs
```
