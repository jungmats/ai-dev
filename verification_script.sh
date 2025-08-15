#!/bin/bash

# AI Development Process Setup Verification Script
# This script validates that Claude Code has correctly initialized the AI development process structure

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Counters
TOTAL_CHECKS=0
PASSED_CHECKS=0
FAILED_CHECKS=0
WARNING_CHECKS=0

# Function to print colored output
print_status() {
    local status=$1
    local message=$2
    
    case $status in
        "PASS")
            echo -e "${GREEN}✓ PASS${NC}: $message"
            ((PASSED_CHECKS++))
            ;;
        "FAIL")
            echo -e "${RED}✗ FAIL${NC}: $message"
            ((FAILED_CHECKS++))
            ;;
        "WARN")
            echo -e "${YELLOW}⚠ WARN${NC}: $message"
            ((WARNING_CHECKS++))
            ;;
        "INFO")
            echo -e "${BLUE}ℹ INFO${NC}: $message"
            ;;
    esac
    ((TOTAL_CHECKS++))
}

# Function to check if file exists
check_file() {
    local file=$1
    local description=$2
    
    if [ -f "$file" ]; then
        print_status "PASS" "$description exists: $file"
        return 0
    else
        print_status "FAIL" "$description missing: $file"
        return 1
    fi
}

# Function to check if directory exists
check_directory() {
    local dir=$1
    local description=$2
    
    if [ -d "$dir" ]; then
        print_status "PASS" "$description exists: $dir"
        return 0
    else
        print_status "FAIL" "$description missing: $dir"
        return 1
    fi
}

# Function to check file content for required sections
check_file_content() {
    local file=$1
    local pattern=$2
    local description=$3
    
    if [ -f "$file" ]; then
        if grep -q "$pattern" "$file"; then
            print_status "PASS" "$description found in $file"
            return 0
        else
            print_status "WARN" "$description not found in $file"
            return 1
        fi
    else
        print_status "FAIL" "Cannot check content - file missing: $file"
        return 1
    fi
}

echo "============================================================"
echo "AI Development Process Setup Verification"
echo "============================================================"
echo

# Check core directory structure
echo "📁 Checking Core Directory Structure..."
check_directory ".claude" "AI process configuration directory"
check_directory ".claude/contracts" "Contracts directory"
check_directory ".claude/validations" "Validations directory"
check_directory ".claude/prompts" "Prompts directory"
check_directory ".claude/templates" "Templates directory"
check_directory "docs" "Documentation directory"
check_directory "specs" "Specifications directory"
check_directory "poc" "Proof of concept directory"
check_directory "src" "Source code directory"
check_directory "tests" "Tests directory"
check_directory "deployment" "Deployment directory"
echo

# Check documentation phase directories
echo "📁 Checking Documentation Phase Directories..."
check_directory "docs/phase-1-idea" "Phase 1 documentation directory"
check_directory "docs/phase-2-research" "Phase 2 documentation directory"
check_directory "docs/phase-3-specification" "Phase 3 documentation directory"
check_directory "docs/phase-4-poc" "Phase 4 documentation directory"
check_directory "docs/phase-5-development" "Phase 5 documentation directory"
check_directory "docs/phase-6-deployment" "Phase 6 documentation directory"
check_directory "docs/validation" "Validation reports directory"
check_directory "docs/handover" "Handover documentation directory"
echo

# Check contract files
echo "📄 Checking Contract Files..."
check_file ".claude/contracts/core-contract.md" "Core development contract"
check_file ".claude/contracts/phase-idea-contract.md" "Application idea phase contract"
check_file ".claude/contracts/phase-research-contract.md" "Research phase contract"
check_file ".claude/contracts/phase-specification-contract.md" "Specification phase contract"
check_file ".claude/contracts/phase-poc-contract.md" "PoC phase contract"
check_file ".claude/contracts/phase-development-contract.md" "Development phase contract"
check_file ".claude/contracts/phase-deployment-contract.md" "Deployment phase contract"
echo

# Check validation checklist files
echo "📋 Checking Validation Checklist Files..."
check_file ".claude/validations/phase-idea-validation.md" "Idea phase validation checklist"
check_file ".claude/validations/phase-research-validation.md" "Research phase validation checklist"
check_file ".claude/validations/phase-specification-validation.md" "Specification phase validation checklist"
check_file ".claude/validations/phase-poc-validation.md" "PoC phase validation checklist"
check_file ".claude/validations/phase-development-validation.md" "Development phase validation checklist"
check_file ".claude/validations/phase-deployment-validation.md" "Deployment phase validation checklist"
echo

# Check prompt files
echo "🤖 Checking AI Prompt Files..."
check_file ".claude/prompts/session-init.md" "Session initialization prompt"
check_file ".claude/prompts/creator-idea.md" "Application idea creator prompt"
check_file ".claude/prompts/creator-research-track-1.md" "Research track 1 prompt"
check_file ".claude/prompts/creator-research-track-2.md" "Research track 2 prompt"
check_file ".claude/prompts/creator-research-track-3.md" "Research track 3 prompt"
check_file ".claude/prompts/creator-research-consolidation.md" "Research consolidation prompt"
check_file ".claude/prompts/creator-spec-1-functional.md" "Specification functional requirements prompt"
check_file ".claude/prompts/creator-spec-2-nonfunctional.md" "Specification non-functional requirements prompt"
check_file ".claude/prompts/creator-spec-3-usecases.md" "Specification use cases prompt"
check_file ".claude/prompts/creator-spec-4-stories.md" "Specification user stories prompt"
check_file ".claude/prompts/creator-spec-5-api.md" "Specification API design prompt"
check_file ".claude/prompts/creator-spec-6-database.md" "Specification database schema prompt"
check_file ".claude/prompts/creator-spec-7-consolidation.md" "Specification consolidation prompt"
check_file ".claude/prompts/creator-poc.md" "PoC creator prompt"
check_file ".claude/prompts/creator-development.md" "Development creator prompt"
check_file ".claude/prompts/creator-deploy-1-infrastructure.md" "Deployment infrastructure prompt"
check_file ".claude/prompts/creator-deploy-2-application.md" "Deployment application prompt"
check_file ".claude/prompts/creator-deploy-3-documentation.md" "Deployment documentation prompt"
check_file ".claude/prompts/validator-critic.md" "Validation agent prompt"
echo

# Check template files
echo "📝 Checking Template Files..."
check_file ".claude/templates/state-template.yaml" "Project state template"
check_file ".claude/templates/project-spec-template.yaml" "Project specification template"
echo

# Check state.yaml file
echo "⚙️  Checking Project State File..."
check_file ".claude/state.yaml" "Project state file"

if [ -f ".claude/state.yaml" ]; then
    # Check state.yaml structure
    check_file_content ".claude/state.yaml" "project:" "Project section in state.yaml"
    check_file_content ".claude/state.yaml" "status:" "Status section in state.yaml"
    check_file_content ".claude/state.yaml" "phases:" "Phases section in state.yaml"
    check_file_content ".claude/state.yaml" "contracts:" "Contracts section in state.yaml"
fi
echo

# Check contract file content structure
echo "🔍 Checking Contract File Content..."
if [ -f ".claude/contracts/core-contract.md" ]; then
    check_file_content ".claude/contracts/core-contract.md" "# Core Development Contract" "Core contract header"
    check_file_content ".claude/contracts/core-contract.md" "Mission:" "Mission statement in core contract"
    check_file_content ".claude/contracts/core-contract.md" "Principles" "Principles section in core contract"
fi

if [ -f ".claude/contracts/phase-idea-contract.md" ]; then
    check_file_content ".claude/contracts/phase-idea-contract.md" "# Application Idea Phase Contract" "Idea contract header"
    check_file_content ".claude/contracts/phase-idea-contract.md" "Mission:" "Mission statement in idea contract"
fi
echo

# Check validation checklist content structure
echo "✅ Checking Validation Checklist Content..."
if [ -f ".claude/validations/phase-idea-validation.md" ]; then
    check_file_content ".claude/validations/phase-idea-validation.md" "# Application Idea Phase Validation Checklist" "Idea validation header"
    check_file_content ".claude/validations/phase-idea-validation.md" "- \[ \]" "Checklist items in idea validation"
fi
echo

# Check prompt file content structure
echo "🎯 Checking Prompt File Content..."
if [ -f ".claude/prompts/session-init.md" ]; then
    check_file_content ".claude/prompts/session-init.md" "# AI DEVELOPMENT SESSION INITIALIZATION" "Session init header"
    check_file_content ".claude/prompts/session-init.md" "state.yaml" "State file reference in session init"
fi

if [ -f ".claude/prompts/creator-idea.md" ]; then
    check_file_content ".claude/prompts/creator-idea.md" "# APPLICATION IDEA CREATOR AGENT" "Idea creator header"
    check_file_content ".claude/prompts/creator-idea.md" "CONTRACTS TO LOAD" "Contract loading section"
fi
echo

# Check for any obvious issues
echo "🔧 Additional Checks..."

# Check if directories are empty (should have some basic structure)
if [ -d "src" ] && [ -z "$(ls -A src)" ]; then
    print_status "WARN" "Source directory is empty (expected for new projects)"
fi

if [ -d "tests" ] && [ -z "$(ls -A tests)" ]; then
    print_status "WARN" "Tests directory is empty (expected for new projects)"
fi

# Check file permissions
if [ -f ".claude/state.yaml" ]; then
    if [ -r ".claude/state.yaml" ] && [ -w ".claude/state.yaml" ]; then
        print_status "PASS" "State file has correct read/write permissions"
    else
        print_status "FAIL" "State file permissions issue"
    fi
fi

echo

# Final summary
echo "============================================================"
echo "Verification Summary"
echo "============================================================"
echo -e "Total Checks: ${BLUE}$TOTAL_CHECKS${NC}"
echo -e "Passed: ${GREEN}$PASSED_CHECKS${NC}"
echo -e "Failed: ${RED}$FAILED_CHECKS${NC}"
echo -e "Warnings: ${YELLOW}$WARNING_CHECKS${NC}"

echo
if [ $FAILED_CHECKS -eq 0 ]; then
    echo -e "${GREEN}🎉 SUCCESS: AI Development Process setup completed successfully!${NC}"
    echo
    echo "Next steps:"
    echo "1. Review and customize contracts in .claude/contracts/ for your specific needs"
    echo "2. Initialize your first project by running the session-init prompt"
    echo "3. Provide your application idea to begin the development process"
    
    if [ $WARNING_CHECKS -gt 0 ]; then
        echo
        echo -e "${YELLOW}Note: $WARNING_CHECKS warnings found. These are typically expected for new projects.${NC}"
    fi
    
    exit 0
else
    echo -e "${RED}❌ FAILURE: $FAILED_CHECKS critical issues found.${NC}"
    echo
    echo "Please fix the failed checks above before proceeding."
    echo "You may need to run Claude Code setup again with the complete markdown file."
    exit 1
fi