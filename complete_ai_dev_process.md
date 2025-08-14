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
- **Project Metadata**: Name, ID, creation date, last update
- **Current Status**: Phase, step, next action, progress percentage
- **Phase Details**: Status, dependencies, deliverables, completion criteria
- **Contract Information**: Loaded contracts, compliance status
- **Session Context**: Working directory, last AI session, current work description

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

---

## 2. Folder Structure

```
project-root/
├── .claude/                                    # AI Development Process Configuration
│   ├── contracts/                             # Quality and standards contracts
│   │   ├── core-contract.md                   # Universal development standards
│   │   ├── phase-idea-contract.md             # Application idea phase standards
│   │   ├── phase-research-contract.md         # Research phase standards
│   │   ├── phase-specification-contract.md    # Specification phase standards
│   │   ├── phase-poc-contract.md              # Proof of concept phase standards
│   │   ├── phase-development-contract.md      # Development phase standards
│   │   └── phase-deployment-contract.md       # Deployment phase standards
│   ├── validations/                           # Quality assurance checklists
│   │   ├── phase-idea-validation.md           # Idea phase validation checklist
│   │   ├── phase-research-validation.md       # Research phase validation checklist
│   │   ├── phase-specification-validation.md  # Specification phase validation checklist
│   │   ├── phase-poc-validation.md            # PoC phase validation checklist
│   │   ├── phase-development-validation.md    # Development phase validation checklist
│   │   └── phase-deployment-validation.md     # Deployment phase validation checklist
│   ├── prompts/                               # AI agent prompt templates
│   │   ├── session-init.md                    # Session initialization prompt
│   │   ├── creator-idea.md                    # Application idea creator prompt
│   │   ├── creator-research.md                # Research agent prompt
│   │   ├── creator-specification.md           # Specification agent prompt
│   │   ├── creator-poc.md                     # PoC agent prompt
│   │   ├── creator-development.md             # Development agent prompt
│   │   ├── creator-deployment.md              # Deployment agent prompt
│   │   └── validator-critic.md                # Validation agent prompt
│   ├── templates/                             # Document and configuration templates
│   │   ├── state-template.yaml                # Project state template
│   │   └── project-spec-template.yaml         # Project specification template
│   └── state.yaml                             # Current project status and metadata
├── docs/                                      # Project Documentation
│   ├── application-idea.md                    # [Phase 1] Structured project concept
│   ├── research/                              # [Phase 2] Research documentation
│   │   ├── research-track-1-frameworks.md     # Framework and technology analysis
│   │   ├── research-track-2-best-practices.md # Best practices and architecture research
│   │   ├── research-track-3-competition.md    # Competitive and market analysis
│   │   └── tech-stack-recommendation.md       # Final technology recommendations
│   ├── research-findings.md                   # [Phase 2] Consolidated research results
│   ├── specification/                         # [Phase 3] Project specifications
│   │   ├── functional-requirements.md         # Detailed functional requirements
│   │   ├── non-functional-requirements.md     # Performance, security, scalability requirements
│   │   ├── use-cases.md                       # Complete use case documentation
│   │   ├── user-stories.md                    # User stories with acceptance criteria
│   │   ├── api-design.md                      # API specifications and endpoints
│   │   ├── database-schema.md                 # Data model and database design
│   │   ├── architecture-overview.md           # System architecture documentation
│   │   └── architecture-overview-updated.md   # [Phase 4] Updated architecture post-PoC
│   ├── poc/                                   # [Phase 4] Proof of concept documentation
│   │   ├── risk-assessment.md                 # Technical risk identification and analysis
│   │   └── poc-results-summary.md             # Consolidated PoC findings and recommendations
│   ├── design/                                # [Phase 5] Low-level design documentation
│   │   ├── feature-[name]-design.md           # Detailed feature design documents
│   │   ├── feature-[name]-units.md            # Units of work breakdown per feature
│   │   ├── database-migrations/               # Database schema change documentation
│   │   └── api-contracts/                     # API interface definitions
│   ├── features/                              # [Phase 5] Feature implementation documentation
│   │   └── [feature]-implementation.md        # Implementation notes per feature
│   ├── api/                                   # [Phase 5] API documentation
│   │   ├── [feature]-endpoints.md             # API documentation per feature
│   │   └── api-documentation.md               # Complete API reference
│   ├── development/                           # [Phase 5] Development process documentation
│   │   ├── coding-standards.md                # Project-specific coding guidelines
│   │   └── testing-strategy.md                # Testing approach and coverage requirements
│   ├── deployment/                            # [Phase 6] Deployment and operations documentation
│   │   ├── staging-deployment-guide.md        # Staging environment setup and deployment
│   │   ├── production-deployment-guide.md     # Production deployment procedures
│   │   ├── environment-variables.md           # Configuration documentation
│   │   ├── database-setup.md                  # Database deployment and migration guide
│   │   ├── monitoring-setup.md                # Monitoring and alerting configuration
│   │   ├── deployment-checklist.md            # Pre/post deployment validation checklist
│   │   ├── go-live-report.md                  # Go-live summary and metrics
│   │   ├── maintenance-guide.md               # Ongoing maintenance procedures
│   │   └── troubleshooting-guide.md           # Common issues and solutions
│   ├── handover/                              # [Phase 6] Project handover documentation
│   │   ├── technical-handover.md              # Technical team handover documentation
│   │   ├── user-manual.md                     # End-user documentation and guides
│   │   └── admin-manual.md                    # System administration procedures
│   ├── phase-reports/                         # Phase completion summaries
│   │   ├── idea-phase-report.md               # Application idea phase summary
│   │   ├── research-phase-report.md           # Research phase summary and key decisions
│   │   ├── specification-phase-report.md      # Specification phase summary
│   │   ├── poc-phase-report.md                # PoC phase summary with risk mitigation status
│   │   ├── development-phase-report.md        # Development phase summary and metrics
│   │   └── deployment-phase-report.md         # Deployment phase summary and lessons learned
│   ├── validation/                            # Quality assurance reports
│   │   └── phase-[phase]-validation-report.md # Validation reports per phase
│   └── project-completion-report.md           # [Phase 6] Final comprehensive project summary
├── specs/                                     # Machine-readable specifications
│   └── project-specification.yaml             # [Phase 3] Complete project specification in YAML format
├── poc/                                       # [Phase 4] Proof of concept implementations
│   ├── database-performance/                  # Database performance validation
│   │   ├── test-queries.sql                   # Performance test queries
│   │   └── performance-results.md             # Performance test results and analysis
│   ├── api-integration/                       # Third-party API integration tests
│   │   ├── auth-flow-test.js                  # Authentication flow validation
│   │   ├── rate-limiting-test.js              # Rate limiting and error handling tests
│   │   └── integration-results.md             # Integration test results and findings
│   └── ui-framework/                          # Frontend framework validation
│       ├── component-examples/                # Sample component implementations
│       └── performance-benchmark.md           # Frontend performance benchmarks
├── src/                                       # [Phase 5] Application source code
│   ├── features/                              # Feature-based code organization
│   │   └── [feature-name]/                    # Individual feature implementations
│   │       ├── components/                    # UI components (if applicable)
│   │       ├── services/                      # Business logic and services
│   │       ├── models/                        # Data models and schemas
│   │       ├── api/                           # API endpoints and routes
│   │       ├── utils/                         # Feature-specific utilities
│   │       └── index.js                       # Feature entry point and exports
│   ├── shared/                                # Shared code and utilities
│   │   ├── components/                        # Reusable UI components
│   │   ├── services/                          # Shared business logic and services
│   │   ├── utils/                             # Common utilities and helpers
│   │   └── types/                             # Type definitions and interfaces
│   ├── config/                                # Application configuration
│   ├── middleware/                            # Application middleware
│   └── app.js                                 # Application entry point
├── tests/                                     # [Phase 5] Test suites
│   ├── unit/                                  # Unit tests
│   │   └── [feature]/                         # Unit tests organized by feature
│   ├── integration/                           # Integration tests
│   │   └── [feature]/                         # Integration tests organized by feature
│   ├── e2e/                                   # End-to-end test suites
│   ├── staging/                               # [Phase 6] Staging environment tests
│   │   └── integration-tests.md               # Staging integration test results
│   └── production/                            # [Phase 6] Production environment tests
│       └── smoke-tests.md                     # Production smoke test results
├── config/                                    # [Phase 5] Environment configurations
├── scripts/                                   # [Phase 5/6] Automation scripts
│   ├── deploy-staging.sh                      # Staging deployment automation
│   ├── deploy-production.sh                   # Production deployment automation
│   ├── run-smoke-tests.sh                     # Post-deployment validation automation
│   ├── backup-database.sh                     # Database backup procedures
│   ├── rollback-deployment.sh                # Deployment rollback procedures
│   ├── ai-dev.sh                             # AI development process CLI
│   └── verify-setup.sh                       # Setup verification script
├── infrastructure/                            # [Phase 6] Infrastructure as Code
│   ├── staging/                               # Staging environment configuration
│   │   ├── docker-compose.yml                # Staging containerization setup
│   │   └── env-config.yml                    # Staging environment configuration
│   ├── production/                            # Production environment configuration
│   │   ├── kubernetes-manifests/              # Kubernetes deployment manifests
│   │   └── terraform/                         # Terraform infrastructure definitions
│   └── monitoring/                            # Monitoring and observability setup
│       ├── prometheus-config.yml              # Prometheus monitoring configuration
│       └── grafana-dashboards/                # Grafana dashboard definitions
├── docker/                                    # [Phase 5] Container configurations
├── .github/workflows/                         # [Phase 5] CI/CD pipeline definitions
├── README.md                                  # [Phase 5] Project setup and development guide
└── CHANGELOG.md                               # [Phase 5] Development progress and change log
```

This folder structure provides:
- **Clear phase separation** with phase indicators showing when files are created
- **Comprehensive documentation** for every aspect of the project
- **Status tracking** for resumable AI development
- **Quality assurance** through contracts and validation checklists
- **Operational readiness** with deployment and maintenance documentation
- **Knowledge preservation** with detailed phase reports and handover materials

The structure is designed to be completely self-contained, allowing the AI development process to be set up in any new project directory and enabling full project lifecycle management from concept to production deployment.