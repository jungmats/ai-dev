# AI Development Process - Output Templates

## Phase 1: Application Idea

### Application Idea Document (`docs/phase-1-idea/application-idea.md`)

```markdown
# Application Idea: [Project Name]

## Executive Summary
[Brief project description and value proposition]

## Project Overview
[Detailed project description and core functionality]

## Objectives & Success Criteria
[Measurable goals and success metrics]

## Target Users
[User groups, needs, and journeys]

## Scope & Constraints
[What's included, excluded, and constraints]

## Initial Risk Assessment
[Technical, business, and resource risks]

## Next Steps
[Research questions and investigation areas]
```

### Phase Report (`docs/phase-1-idea/idea-phase-report.md`)

```markdown
# Application Idea Phase Report

## Phase Summary
[Duration, decisions, assumptions, risks]

## Deliverables Completed
[Checklist of completed items]

## Key Decisions
[Major decisions and rationale]

## Identified Risks
[Risk list with priorities]

## Next Phase Readiness
[Readiness checklist and blockers]
```

## Phase 2: Research

### Research Track 1 (`docs/phase-2-research/research-track-1-frameworks.md`)

```markdown
# Research Track 1: Framework & Technology Analysis

## Executive Summary
[Key findings and recommendations]

## Methodology
[Research approach and sources]

## [Technology Category] Analysis
[Comparison of options with evaluation criteria]

## Recommendations
[Primary choices with rationale and alternatives]

## References
[Sources and documentation links]
```

### Research Track 2 (`docs/phase-2-research/research-track-2-best-practices.md`)

```markdown
# Research Track 2: Best Practices & Architecture Patterns

## Executive Summary
[Key findings and architectural recommendations]

## [Practice Area]
[Best practices research and recommendations]

## Architecture Patterns
[Recommended patterns and approaches]

## Implementation Considerations
[Timeline, resources, and constraints]

## References
[Sources and standards referenced]
```

### Research Track 3 (`docs/phase-2-research/research-track-3-competition.md`)

```markdown
# Research Track 3: Competitive & Market Analysis

## Executive Summary
[Market landscape and competitive insights]

## Competitive Landscape
[Competitor analysis and positioning]

## Feature Comparison
[Feature matrix and gap analysis]

## Market Opportunities
[Differentiation and positioning opportunities]

## References
[Competitor sources and market data]
```

### Research Findings Summary (`docs/phase-2-research/research-findings.md`)

```markdown
# Research Findings Summary

## Executive Summary
[Consolidated insights and recommendations]

## Technology Stack Recommendation
[Final technology choices with rationale]

## Architecture Recommendations
[Architectural approach and patterns]

## Risk Assessment & Mitigation
[Identified risks and mitigation strategies]

## Implementation Roadmap
[Sequencing and timeline considerations]

## Next Steps
[Preparation for specification phase]
```

### Technology Stack Recommendation (`docs/phase-2-research/tech-stack-recommendation.md`)

```markdown
# Technology Stack Recommendation

## Recommendation Summary
[Technology choices with confidence levels]

## [Technology Category] Recommendation
[Choice, rationale, advantages, considerations, alternatives]

## Integration Considerations
[Technology compatibility and workflow implications]

## Risk Assessment
[Technology risks and dependencies]

## Implementation Timeline
[Phases and team implications]

## Approval Required
[Approval checklist]
```

### Research Phase Report (`docs/phase-2-research/research-phase-report.md`)

```markdown
# Research Phase Report

## Phase Summary
[Duration, completion status, key decisions]

## Research Track Completion
[Status and findings for each track]

## Major Decisions Made
[Technology and architecture decisions]

## Risk Assessment Results
[Risk identification and mitigation plans]

## Next Phase Preparation
[Readiness and critical inputs for specification]

## Deliverables Summary
[Completion checklist]
```

## Phase 3: Specification

### Functional Requirements (`docs/phase-3-specification/functional-requirements.md`)

```markdown
# Functional Requirements

## Overview
[Document purpose and scope]

## [Requirement Category]
- **[REQ-ID]**: The system [SHALL/SHOULD/MAY] [requirement description]

## Requirements Traceability
[Mapping between requirements, user stories, and use cases]
```

### Non-Functional Requirements (`docs/phase-3-specification/non-functional-requirements.md`)

```markdown
# Non-Functional Requirements

## Overview
[Document purpose and quality attributes]

## [Requirement Category]
- **[NFR-ID]**: [Requirement description with measurable criteria]

## Measurement and Testing
[How requirements will be validated]
```

### Use Cases (`docs/phase-3-specification/use-cases.md`)

```markdown
# Use Cases

## Overview
[Purpose and scope]

## Actors
- **[Actor Name]**: [Description]

## Use Case: [UC-ID] [Title]
**Primary Actor:** [Actor]
**Goal:** [Objective]
**Preconditions:** [Required state]
**Postconditions:** [End state]

**Main Success Scenario:**
1. [Step]
2. [Step]

**Extensions:**
[Step]a. [Alternative condition]:
    [Step]a1. [Response]
    [Step]a2. [Return point]

**Frequency:** [High/Medium/Low]
**Business Rules:** [Constraints]
```

### User Stories (`docs/phase-3-specification/user-stories.md`)

```markdown
# User Stories

## Epic: [Epic Name]

### User Story: [US-ID] [Title]
**As a** [user type]
**I want** [goal]
**So that** [benefit]

**Priority:** [Must/Should/Could/Won't]
**Story Points:** [Estimate]

**Acceptance Criteria:**
- [ ] GIVEN [context] WHEN [action] THEN [outcome]

**Definition of Done:**
- [ ] [Criteria]

**Dependencies:** [Dependencies]
**Notes:** [Additional context]
```

### API Design (`docs/phase-3-specification/api-design.md`)

```markdown
# API Design Specification

## Overview
[API purpose and standards]

## Endpoint: [Method] [Path]
**Description:** [Purpose]
**Authentication:** [Requirements]

**Request:**
```json
{
  "[field]": "[description]"
}
```

**Response:**
```json
{
  "[field]": "[description]"
}
```

**Status Codes:**
- `[Code]`: [Description]

## Error Handling
[Error format and common codes]

## Authentication
[Authentication mechanism]
```

### Database Schema (`docs/phase-3-specification/database-schema.md`)

```markdown
# Database Schema Design

## Overview
[Data model approach]

## Entity: [Name]
**Purpose:** [Description]

**Attributes:**
- `[field]` ([type]): [Description]

**Constraints:**
- Primary Key: `[field]`
- Foreign Keys: `[field]` references `[table.field]`

**Indexes:**
- `[name]` on `([fields])`: [Purpose]

## Relationships
[Entity relationships]

## Migration Strategy
[Schema change approach]
```

### Architecture Overview (`docs/phase-3-specification/architecture-overview.md`)

```markdown
# Architecture Overview

## System Architecture
[High-level architecture description]

## Component: [Name]
**Purpose:** [Function]
**Responsibilities:** [Key duties]
**Technology:** [Implementation]
**Interfaces:** [Interactions]

## Data Flow
[Data movement through system]

## Integration Points
**[Service Name]**
- **Purpose:** [Integration reason]
- **Method:** [Integration approach]

## Technology Stack
- **[Category]:** [Choice and rationale]

## Architecture Decisions
**Decision: [Title]**
- **Context:** [Background]
- **Decision:** [Choice]
- **Rationale:** [Reasoning]
```

### Project Specification YAML (`specs/project-specification.yaml`)

```yaml
specification:
  version: "1.0"
  generated: "[timestamp]"
  
project:
  name: "[name]"
  description: "[description]"
  
requirements:
  functional:
    - id: "[id]"
      title: "[title]"
      description: "[description]"
      priority: "[priority]"
      
  non_functional:
    - category: "[category]"
      requirements:
        - id: "[id]"
          description: "[description]"

use_cases:
  - id: "[id]"
    title: "[title]"
    primary_actor: "[actor]"
    goal: "[goal]"

user_stories:
  - id: "[id]"
    description: "[story]"
    priority: "[priority]"
    acceptance_criteria: []

tech_stack:
  frontend: "[choice]"
  backend: "[choice]"
  database: "[choice]"

architecture:
  patterns: []
  components: []
```

### Specification Phase Report (`docs/phase-3-specification/specification-phase-report.md`)

```markdown
# Specification Phase Report

## Phase Summary
[Duration, completion, key outcomes]

## Deliverables Completed
[Specification documents checklist]

## Requirements Summary
[Functional and non-functional requirements count]

## Architecture Decisions
[Key architectural choices made]

## Validation Results
[Stakeholder approval and feedback]

## Next Phase Readiness
[PoC phase preparation checklist]
```

## Phase 4: Proof of Concept

### Risk Assessment (`docs/phase-4-poc/risk-assessment.md`)

```markdown
# Technical Risk Assessment

## Risk: [ID] - [Title]
**Category:** [Performance/Integration/Technology/Security/Infrastructure]
**Probability:** [High/Medium/Low]
**Impact:** [High/Medium/Low]
**Priority:** [Critical/High/Medium/Low]

**Description:** [Risk description]
**PoC Approach:** [Validation method]
**Success Criteria:** [Acceptance criteria]
```

### PoC Results Summary (`docs/phase-4-poc/poc-results-summary.md`)

```markdown
# PoC Results Summary

## PoC: [Risk ID] - [Title]

## Test Environment
[Setup and configuration]

## Test Results
[Quantitative and qualitative results]

## Analysis
[Assessment against success criteria]

## Recommendations
[Technology validation and architecture adjustments]
```

### PoC Phase Report (`docs/phase-4-poc/poc-phase-report.md`)

```markdown
# PoC Phase Report

## Phase Summary
[Duration, risks addressed, outcomes]

## Risk Mitigation Results
[Risk-by-risk assessment results]

## Architecture Updates
[Changes based on PoC findings]

## Technology Validation
[Confirmed or changed technology choices]

## Next Phase Readiness
[Development phase preparation]
```

## Phase 5: Development

### Feature Design (`docs/phase-5-development/feature-[name]-design.md`)

```markdown
# Feature Design: [Feature Name]

## Overview
[Feature purpose and scope]

## Technical Design
[Component breakdown and architecture]

## Implementation Plan
[Development approach and sequence]

## Testing Strategy
[Testing approach for this feature]
```

### Feature Units (`docs/phase-5-development/feature-[name]-units.md`)

```markdown
# Feature Units: [Feature Name]

## Unit: [Unit Name]
**Purpose:** [Unit responsibility]
**Dependencies:** [Required components]
**Estimated Effort:** [Time estimate]
**Implementation Order:** [Sequence number]

## Testing Requirements
[Unit-specific testing needs]
```

### API Documentation (`docs/phase-5-development/api-documentation.md`)

```markdown
# API Documentation

## Overview
[API purpose and access information]

## Endpoint: [Method] [Path]
**Description:** [Function]
**Parameters:** [Input parameters]
**Response:** [Output format]
**Examples:** [Usage examples]
```

### Development Phase Report (`docs/phase-5-development/development-phase-report.md`)

```markdown
# Development Phase Report

## Phase Summary
[Duration, features completed, metrics]

## Feature Development Status
[Feature-by-feature completion status]

## Quality Metrics
[Test coverage, code quality, performance]

## Technical Decisions
[Implementation choices and rationale]

## Next Phase Readiness
[Deployment preparation checklist]
```

## Phase 6: Deployment

### Deployment Guide (`docs/phase-6-deployment/deployment-guide.md`)

```markdown
# Deployment Guide

## Overview
[Deployment approach and requirements]

## Environment Setup
[Infrastructure and configuration requirements]

## Deployment Steps
[Step-by-step deployment process]

## Validation
[Post-deployment verification steps]

## Rollback Procedure
[How to revert deployment if needed]
```

### User Manual (`docs/handover/user-manual.md`)

```markdown
# User Manual

## Getting Started
[Initial setup and first steps]

## [Feature Name]
[How to use each major feature]

## Troubleshooting
[Common issues and solutions]

## Support
[How to get help]
```

### Technical Handover (`docs/handover/technical-handover.md`)

```markdown
# Technical Handover

## System Overview
[Architecture and component summary]

## Operations
[How to operate and maintain the system]

## Troubleshooting
[Common technical issues and solutions]

## Contacts
[Support and escalation contacts]
```

### Project Completion Report (`docs/project-completion-report.md`)

```markdown
# Project Completion Report

## Project Summary
[Objectives, timeline, outcomes]

## Deliverables
[What was built and delivered]

## Success Metrics
[Achievement against original goals]

## Lessons Learned
[Key insights and recommendations]

## Maintenance and Support
[Ongoing requirements and procedures]
```

### Deployment Phase Report (`docs/phase-6-deployment/deployment-phase-report.md`)

```markdown
# Deployment Phase Report

## Phase Summary
[Deployment completion and status]

## Environment Status
[Staging and production environment health]

## Performance Validation
[System performance against requirements]

## Handover Completion
[Documentation and knowledge transfer status]

## Project Closure
[Final project status and sign-off]
```