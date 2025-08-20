### Session Initialization (`prompts/session-init.md`)

```markdown
# AI DEVELOPMENT SESSION INITIALIZATION

## 1. STATUS ASSESSMENT
Load and analyze: `state.yaml`

IF state.yaml does not exist:
  → This is a new project initialization
  → Role: Project Initializer
  → Next Action: Request project idea and create application-idea.md
  → STOP and request human input

IF state.yaml exists:
  → Extract current_phase: {current_phase}
  → Extract current_step: {current_step}
  → Extract next_action: {next_action}
  → Load appropriate role template based on current_phase

## 2. CONTRACT LOADING
ALWAYS load: `.claude/contracts/core-contract.md`
Load phase-specific contracts: `.claude/contracts/phase-{current_phase}-contract.md`

## 3. CONTEXT RECOVERY
- Review recent deliverables from current phase
- Check for incomplete tasks in state.yaml
- Validate all input dependencies are satisfied
- Assess any blocking issues

## 4. ACTION EXECUTION
Execute the identified next_action following the loaded contracts.
Update state.yaml after each significant step.

---
Role-specific template will be loaded based on current phase...
```
