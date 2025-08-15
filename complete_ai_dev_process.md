# AI-Driven Development Process - Complete Setup Guide

> **Setup Instructions for Claude Code:**
> 1. Download this markdown file
> 2. Start Claude Code in your desired project directory
> 3. Run: "Read this markdown file and set up the complete AI development process structure. Create all directories, generate all contract files, prompt templates, validation checklists, CLI scripts, and verification tools exactly as specified."
> 4. Run the generated verification script to ensure complete setup
> 5. Customize contracts and templates for your specific needs

---

## 1. Process Description

### Core Concept
A structured, phase-based development process that uses AI (Claude) as the primary developer, with targeted human validation points at critical stages. The process is fully status-aware, allowing AI to resume work after any interruption by analyzing the current state and determining the next required actions.

### Key Principles

#### AI-First, Human-Validated
- AI performs the main work (research, coding, testing, documentation)
- Humans validate at critical decision points
- Feedback loops enable corrections and course adjustments
- Human expertise focuses on business decisions and quality assurance

#### Status-Aware Execution
- Complete project state tracked in `state.yaml`
- AI can determine current phase, step, and next action at any time
- Resumable after interruptions, system restarts, or context switches
- Granular progress tracking within each phase

#### Contract-Driven Quality
- Core contract defines universal standards (architecture, code quality, testing)
- Phase-specific contracts define deliverable formats and requirements
- Validation checklists ensure systematic quality assurance
- Self-review patterns reduce human oversight burden

#### Test-Driven Development
- Tests written before implementation
- Minimum 90% code coverage requirement
- Unit, integration, and end-to-end testing strategies
- Continuous integration and automated quality gates

### The 6 Development Phases

#### Phase 1: Application Idea
**Purpose**: Transform rough project concepts into structured, actionable application ideas

**Process**:
1. Capture human-provided project concept
2. Structure into comprehensive application idea document
3. Define scope, objectives, and success criteria
4. Identify target users and their needs
5. Assess initial risks and constraints
6. Prepare research questions for next phase

**Key Deliverables**:
- `docs/application-idea.md` - Structured project description
- `state.yaml` - Initial project status and metadata
- `docs/phase-reports/idea-phase-report.md` - Phase summary

**Human Validation**: Business logic validation, scope approval, stakeholder sign-off

#### Phase 2: Research
**Purpose**: Comprehensive technical and market research to inform all project decisions

**Process**:
1. **Track 1: Framework & Technology Analysis**
   - Compare frontend frameworks (minimum 3 options)
   - Analyze backend technologies (minimum 3 options)  
   - Evaluate database solutions (SQL vs NoSQL)
   - Research hosting and cloud platforms
   - Assess development tools and build systems

2. **Track 2: Best Practices & Architecture Patterns**
   - Research industry standards for similar projects
   - Identify security best practices
   - Analyze scalability patterns
   - Study testing strategies
   - Review deployment and DevOps practices

3. **Track 3: Competitive Analysis**
   - Create feature comparison matrices
   - Analyze competitor technology stacks
   - Study user experience patterns
   - Identify market gaps and opportunities
   - Research pricing models (if applicable)

4. **Consolidation**
   - Synthesize findings from all tracks
   - Generate technology stack recommendations
   - Create implementation roadmap
   - Document risk mitigation strategies

**Key Deliverables**:
- `docs/research/research-track-1-frameworks.md`
- `docs/research/research-track-2-best-practices.md`
- `docs/research/research-track-3-competition.md`
- `docs/research-findings.md` - Consolidated results
- `docs/research/tech-stack-recommendation.md` - Final recommendations

**Human Validation**: Technology choice approval, architecture decision validation

#### Phase 3: Specification
**Purpose**: Convert research insights into detailed, implementable project specifications

**Process**:
1. **Functional Requirements Analysis**
   - Extract requirements from application idea
   - Define system behaviors and features
   - Establish requirement priorities (MoSCoW method)
   - Create traceability to user stories

2. **Non-Functional Requirements Definition**
   - Performance requirements (response times, throughput)
   - Scalability requirements (concurrent users, data volume)
   - Security requirements (authentication, authorization)
   - Reliability requirements (uptime, error handling)
   - Usability and compatibility requirements

3. **Use Cases Documentation**
   - Primary user scenarios
   - Alternative and exception flows
   - Pre and post conditions
   - Business rules and constraints

4. **User Stories with Acceptance Criteria**
   - Epic-based feature organization
   - INVEST criteria compliance
   - Testable acceptance criteria
   - Story point estimation

5. **Technical Design**
   - API design (REST/GraphQL specifications)
   - Database schema design
   - System architecture documentation
   - Integration point definitions

6. **Machine-Readable Specification**
   - YAML format for programmatic access
   - Complete requirement traceability
   - Technology stack integration
   - Architecture pattern documentation

**Key Deliverables**:
- `docs/specification/functional-requirements.md`
- `docs/specification/non-functional-requirements.md`
- `docs/specification/use-cases.md`
- `docs/specification/user-stories.md`
- `docs/specification/api-design.md`
- `docs/specification/database-schema.md`
- `docs/specification/architecture-overview.md`
- `specs/project-specification.yaml` - Machine-readable format

**Human Validation**: Business logic validation, user story approval, architecture sign-off

#### Phase 4: Proof of Concept (PoC)
**Purpose**: Validate technical assumptions through minimal, focused proof of concepts

**Process**:
1. **Risk Identification**
   - Performance risks (database queries, API response times)
   - Integration risks (third-party APIs, legacy systems)
   - Technology risks (learning curve, framework limitations)
   - Security risks (authentication complexity, data protection)
   - Infrastructure risks (deployment, scaling, monitoring)

2. **PoC Planning**
   - Define minimal test for each risk
   - Establish success/failure criteria
   - Estimate effort and timeline
   - Plan test environments and data

3. **PoC Implementation**
   - Create focused, minimal implementations
   - Measure actual performance metrics
   - Test integration scenarios
   - Validate security approaches
   - Document all findings and learnings

4. **Results Analysis**
   - Evaluate each PoC against success criteria
   - Identify architecture adjustments needed
   - Recommend technology changes if necessary
   - Plan additional PoCs if risks remain

5. **Architecture Updates**
   - Incorporate PoC learnings into architecture
   - Update technology selections based on evidence
   - Refine performance and scalability approaches
   - Document architecture decisions

**Key Deliverables**:
- `docs/poc/risk-assessment.md`
- `poc/database-performance/` - Performance validation code and results
- `poc/api-integration/` - Integration test implementations
- `poc/ui-framework/` - Frontend framework validation
- `docs/poc/poc-results-summary.md`
- `docs/specification/architecture-overview-updated.md`

**Human Validation**: Risk mitigation approval, architecture change validation

#### Phase 5: Design & Development
**Purpose**: Implement the complete application following test-driven development and best practices

**Process**:
1. **Feature Prioritization**
   - Order features by business value and dependencies
   - Plan development iterations
   - Identify integration points

2. **Per Feature Development**:
   - **Low-Level Design**: Component breakdown, interface definitions, data flow
   - **Units of Work**: Break features into implementable units
   - **Test-Driven Implementation**:
     - Write unit tests first
     - Implement code to pass tests
     - Write integration tests
     - Implement feature integration
     - Validate against acceptance criteria
   - **Documentation**: Implementation notes, API documentation

3. **Code Organization**
   - Feature-based directory structure
   - Shared components and utilities
   - Clear separation of concerns
   - Consistent naming conventions

4. **Quality Assurance**
   - Continuous integration pipeline
   - Automated testing at all levels
   - Code review processes
   - Performance monitoring
   - Security validation

5. **API Documentation**
   - Auto-generated from code annotations
   - Interactive documentation
   - Usage examples and best practices

**Key Deliverables**:
- `src/` - Complete application source code
- `tests/` - Comprehensive test suites
- `docs/design/` - Low-level design documents
- `docs/api/` - Complete API documentation
- `docs/features/` - Implementation documentation
- `README.md` - Development setup guide
- `CHANGELOG.md` - Development progress tracking

**Human Validation**: Feature functionality testing, user experience validation

#### Phase 6: Deployment
**Purpose**: Set up production-ready environments and deploy the application

**Process**:
1. **Infrastructure as Code**
   - Define all infrastructure in version control
   - Separate staging and production configurations
   - Implement security best practices
   - Set up monitoring and logging

2. **Staging Environment**
   - Deploy application to staging
   - Run comprehensive integration tests
   - Performance validation
   - Security testing
   - User acceptance testing preparation

3. **Production Deployment**
   - Blue-green deployment strategy
   - Database migration execution
   - SSL certificate configuration
   - Load balancer and CDN setup
   - Monitoring and alerting configuration

4. **Post-Deployment Validation**
   - Smoke testing of critical functionality
   - Performance baseline establishment
   - Security scan execution
   - Backup procedure validation
   - Rollback procedure testing

5. **Operational Documentation**
   - Deployment procedures
   - Monitoring and alerting setup
   - Troubleshooting guides
   - Maintenance procedures
   - Emergency response plans

6. **Project Handover**
   - Technical documentation package
   - User manuals and training materials
   - Administrative procedures
   - Support and maintenance guidelines

**Key Deliverables**:
- `infrastructure/` - Complete infrastructure definitions
- `scripts/` - Deployment and operational scripts
- `docs/deployment/` - Deployment and operational documentation
- `docs/handover/` - Complete handover package
- `docs/project-completion-report.md` - Final project summary

**Human Validation**: Staging approval, production deployment approval, final acceptance

### Status Management System

The process uses a comprehensive status tracking system that enables AI to understand the current project state and determine next actions:

#### State Tracking (`state.yaml`)
```yaml
project:
  name: "[Project Name]"
  id: "proj-[YYYY-MM-DD]-[slug]"
  created: "[ISO timestamp]"
  last_updated: "[ISO timestamp]"
  description: "[Brief project description]"
  
status:
  current_phase: "[idea|research|specification|poc|development|deployment]"
  current_step: "[current step within phase]"
  next_action: "[specific next action to take]"
  progress_percentage: 0
  
phases:
  idea:
    status: "[pending|in_progress|completed]"
    started: "[ISO timestamp]"
    completed: "[ISO timestamp]"
    validation_passed: false
    deliverables:
      - "docs/application-idea.md"
      - "docs/phase-reports/idea-phase-report.md"
    next_phase_approved: false
    
  research:
    status: "[pending|in_progress|completed]"
    started: "[ISO timestamp]"
    completed: "[ISO timestamp]"
    current_step: "[track-1-frameworks|track-2-best-practices|track-3-competition|consolidate-findings|human-validation]"
    completed_steps: []
    remaining_steps: []
    deliverables:
      completed: []
      pending:
        - "docs/research/research-track-1-frameworks.md"
        - "docs/research/research-track-2-best-practices.md"
        - "docs/research/research-track-3-competition.md"
        - "docs/research-findings.md"
        - "docs/research/tech-stack-recommendation.md"
        - "docs/phase-reports/research-phase-report.md"
    validation_passed: false
    
  specification:
    status: "[pending|in_progress|completed]"
    dependencies: ["research.completed"]
    started: "[ISO timestamp]"
    completed: "[ISO timestamp]"
    current_step: "[functional-requirements|non-functional-requirements|use-cases|user-stories|api-design|database-schema|architecture|yaml-generation|human-validation]"
    completed_steps: []
    remaining_steps: []
    deliverables:
      completed: []
      pending:
        - "docs/specification/functional-requirements.md"
        - "docs/specification/non-functional-requirements.md"
        - "docs/specification/use-cases.md"
        - "docs/specification/user-stories.md"
        - "docs/specification/api-design.md"
        - "docs/specification/database-schema.md"
        - "docs/specification/architecture-overview.md"
        - "specs/project-specification.yaml"
        - "docs/phase-reports/specification-phase-report.md"
    validation_passed: false
    
  poc:
    status: "[pending|in_progress|completed]"
    dependencies: ["specification.completed"]
    started: "[ISO timestamp]"
    completed: "[ISO timestamp]"
    current_step: "[risk-assessment|poc-implementation|results-analysis|architecture-update|human-validation]"
    identified_risks: []
    # Example:
    # - id: "risk-1"
    #   category: "performance"
    #   description: "Database performance with expected load"
    #   priority: "high"
    #   status: "completed"
    #   poc_result: "passed"
    #   poc_files: 
    #     - "poc/database-performance/test-queries.sql"
    #     - "poc/database-performance/performance-results.md"
    deliverables:
      completed: []
      pending:
        - "docs/poc/risk-assessment.md"
        - "docs/poc/poc-results-summary.md"
        - "docs/specification/architecture-overview-updated.md"
        - "docs/phase-reports/poc-phase-report.md"
    validation_passed: false
    
  development:
    status: "[pending|in_progress|completed]"
    dependencies: ["poc.completed"]
    started: "[ISO timestamp]"
    completed: "[ISO timestamp]"
    current_feature: "[feature-name]"
    current_unit: "[unit-name]"
    current_step: "[design|unit-breakdown|unit-test-implementation|code-implementation|integration-tests|feature-validation]"
    features: {}
    # Example:
    # user-authentication:
    #   priority: 1
    #   status: "in_progress"
    #   design_approved: true
    #   units:
    #     login-form:
    #       status: "completed"
    #       tests_passing: true
    #       files:
    #         - "src/features/auth/login-form.js"
    #         - "tests/unit/auth/login-form.test.js"
    #     password-validation:
    #       status: "in_progress"
    #       current_step: "unit_test_implementation"
    #       files:
    #         - "tests/unit/auth/password-validation.test.js"
    test_coverage: 0
    deliverables:
      completed: []
      pending:
        - "src/"
        - "tests/"
        - "docs/api/api-documentation.md"
        - "README.md"
        - "CHANGELOG.md"
        - "docs/phase-reports/development-phase-report.md"
    validation_passed: false
    
  deployment:
    status: "[pending|in_progress|completed]"
    dependencies: ["development.completed"]
    started: "[ISO timestamp]"
    completed: "[ISO timestamp]"
    current_step: "[staging-setup|staging-validation|production-setup|production-deployment|post-deployment-validation|documentation|handover]"
    staging_deployed: false
    production_deployed: false
    monitoring_active: false
    deliverables:
      completed: []
      pending:
        - "infrastructure/"
        - "scripts/"
        - "docs/deployment/"
        - "docs/handover/"
        - "docs/project-completion-report.md"
        - "docs/phase-reports/deployment-phase-report.md"
    validation_passed: false

contracts:
  core_version: "1.0"
  loaded_contracts:
    - "core-contract.md"
    # Phase-specific contract loaded based on current_phase
  last_compliance_check: "[ISO timestamp]"
  compliance_status: "[passed|failed|warning]"
  compliance_issues: []

context:
  working_directory: "[project directory path]"
  last_ai_session: "[ISO timestamp]"
  session_context: "[description of current work]"
  working_files: []
  environment_state:
    dependencies_installed: false
    database_setup: false
    server_running: false
    tests_passing: false
  
next_actions:
  immediate: "[immediate next action]"
  after_current: "[action after current completes]"
  phase_goal: "[overall goal for current phase]"

error_state:
  has_error: false
  error_phase: "[phase where error occurred]"
  error_step: "[step where error occurred]"
  error_message: "[error description]"
  error_timestamp: "[ISO timestamp]"
  recovery_actions: []
  auto_recovery_attempted: false

metadata:
  process_version: "1.0"
  last_backup: "[ISO timestamp]"
  git_commit: "[last git commit hash]"
  team_members: []
  stakeholders: []
```

#### Status-Aware Execution
- AI always begins by loading and analyzing `state.yaml`
- Determines current phase and specific step within that phase
- Identifies the exact next action to take
- Loads appropriate contracts and validation checklists
- Updates status after completing each significant step

#### Resumability
- Process can be interrupted and resumed at any time
- No loss of context or progress
- Clear audit trail of all decisions and changes
- Rollback capability to previous states

#### Error Recovery
- Comprehensive error state tracking
- Automatic recovery suggestions
- Manual intervention points
- Rollback to last known good state

---

## 2. Folder Structure

```
project-root/
├── .claude/                                   # AI Development Process Configuration
│   ├── contracts/                            # Quality and standards contracts
│   │   ├── core-contract.md                  # Universal development standards
│   │   ├── phase-idea-contract.md            # Application idea phase standards
│   │   ├── phase-research-contract.md        # Research phase standards
│   │   ├── phase-specification-contract.md   # Specification phase standards
│   │   ├── phase-poc-contract.md             # Proof of concept phase standards
│   │   ├── phase-development-contract.md     # Development phase standards
│   │   └── phase-deployment-contract.md      # Deployment phase standards
│   ├── validations/                          # Quality assurance checklists
│   │   ├── phase-idea-validation.md          # Idea phase validation checklist
│   │   ├── phase-research-validation.md      # Research phase validation checklist
│   │   ├── phase-specification-validation.md # Specification phase validation checklist
│   │   ├── phase-poc-validation.md           # PoC phase validation checklist
│   │   ├── phase-development-validation.md   # Development phase validation checklist
│   │   └── phase-deployment-validation.md    # Deployment phase validation checklist
│   ├── prompts/                              # AI agent prompt templates
│   │   ├── session-init.md                   # Session initialization prompt
│   │   ├── creator-idea.md                   # Application idea creator prompt
│   │   ├── creator-research.md               # Research agent prompt
│   │   ├── creator-specification.md          # Specification agent prompt
│   │   ├── creator-poc.md                    # PoC agent prompt
│   │   ├── creator-development.md            # Development agent prompt
│   │   ├── creator-deployment.md             # Deployment agent prompt
│   │   └── validator-critic.md               # Validation agent prompt
│   ├── templates/                            # Document and configuration templates
│   └── state.yaml                            # Current project status and metadata
├── docs/                                     # Project Documentation
│   ├── phase-1-idea/                        # Application idea phase documentation
│   ├── phase-2-research/                    # Research phase documentation
│   ├── phase-3-specification/               # Specification phase documentation
│   ├── phase-4-poc/                         # Proof of concept phase documentation
│   ├── phase-5-development/                 # Development phase documentation
│   ├── phase-6-deployment/                  # Deployment phase documentation
│   ├── validation/                          # Quality assurance reports
│   └── handover/                            # Project handover documentation
├── specs/                                   # Machine-readable specifications
├── poc/                                     # Proof of concept implementations
├── src/                                     # Application source code
├── tests/                                   # Test suites
└── deployment/                              # Deployment configurations and scripts
```
