# Core Development Contract v1.0

Mission: Produce maintainable, testable code following established patterns.

Principles (in order):
- Maintainability > performance > convenience
- Small, incremental changes over big rewrites
- Explicit over implicit
- Document decisions, not code

Red Lines (never do):
- Don't hardcode secrets, credentials, or sensitive data
- Don't skip tests for core functionality
- Don't break existing APIs without versioning
- Don't commit non-working code to main branch

Code Standards:
- Functions: max 50 lines, single responsibility
- Files: max 500 lines, clear module boundaries  
- Naming: descriptive, context-appropriate
- Comments: explain "why", not "what"

Testing Requirements:
- Minimum 80% coverage, 95% for critical paths
- Test naming: should_[behavior]_when_[condition]
- Independent tests, no shared state
- Unit, integration, and E2E coverage

Documentation:
- README with setup and usage
- API docs for public interfaces
- ADRs for architectural decisions
- Changelog for user-facing changes

Security:
- Validate all inputs at boundaries
- Use least-privilege access
- Encrypt sensitive data
- Log security events

Error Handling:
- Graceful degradation
- Structured logging
- User-friendly messages
- Automatic recovery where possible

Version: 1.0