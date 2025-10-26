# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Claude Code skills plugin for writing NSERC Discovery Grant applications. It provides specialized guidance grounded in the official Merit Indicators framework and informed by successful applications from statistics and machine learning.

## Plugin Structure

This repository follows the Claude Code skills plugin format defined in `plugin.json`:

- **plugin.json**: Defines the plugin metadata and skill registry
  - `name`: Plugin identifier (`nserc-skills`)
  - `skills`: Array of skill definitions with paths and descriptions

- **Skill files**: Each skill is defined in a `SKILL.md` file within its own directory
  - Located at: `{skill-name}/SKILL.md`
  - Contains YAML frontmatter with `name` and `description`
  - Main content is the skill implementation in Markdown

### Current Skills

**nserc-discovery-grant** (`nserc-discovery-grant/SKILL.md`):
Comprehensive skill for writing NSERC Discovery Grant applications with Merit Indicator framework, cross-disciplinary writing guidance, and systematic coverage checks.

## Key Architecture Principles

### 1. Skill Activation

Skills are activated when Claude Code encounters tasks matching the skill description. The `description` field in both `plugin.json` and the SKILL.md frontmatter determines when the skill triggers.

**Trigger patterns for nserc-discovery-grant**:
- Writing or reviewing NSERC Discovery Grant applications
- Working with Application.md or LaTeX attachments
- Requesting synthetic reviews
- Need Merit Indicator coverage checks

### 2. Merit Indicator Framework

The entire skill is grounded in NSERC's official evaluation framework (lines 24-57 in SKILL.md):

**Three Evaluation Criteria**:
1. Excellence of the Researcher
2. Merit of the Proposal
3. Training of Highly Qualified Personnel (HQP)

Each criterion has specific Merit Indicator items rated on a 6-level scale (Exceptional → Insufficient).

**Critical design principle**: All feedback must reference specific Merit Indicator items. Generic grant advice without NSERC grounding is explicitly forbidden (line 263).

### 3. Top 10 Tips Integration

Lines 60-116 integrate experienced reviewer guidance. Key tips emphasized throughout:
- **Tip #2**: Package coherence - all components must tell coherent story
- **Tip #6**: Write for GENERAL cross-disciplinary audience (most critical)
- **Tip #8**: Address ALL Merit Indicators systematically
- **Tip #9**: Even brief mentions count for less central items

### 4. Repository Organization Pattern

Lines 497-846 define expected structure for NSERC application repositories:

**Application.md**: Text-only responses for web form
- Character limits tracked (e.g., 3,000 for Summary, 9,000 for HQP Training)
- **Must use narrative prose, NOT bullet points** (lines 627-682)
- Structure cannot be changed - reflects NSERC form

**LaTeX template system**:
- `nserc-template.tex`: Master template
- `headers.tex`: Packages and environments
- `defs.tex`: Custom macros
- Document naming: `roy-nserc-{attachment-name}.tex`

**Reference materials**:
- `past-applications/`: Exemplar successful applications
- `samples-of-research-contributions/`: Three submitted papers
- `writing-samples/`: Related writing showing applicant's style
- `most-significant-contributions/`: Five bodies of work
- `initial-drafts/`: NOI and planning conversations

### 5. Review Workflow

The 6-step review process (lines 212-246):
1. Identify which evaluation criterion section addresses
2. Map content to specific Merit Indicator items
3. Assess from cross-disciplinary reviewer perspective
4. Check cross-component consistency (Tip #2)
5. Apply Top 10 Tips
6. Provide structured feedback with Merit Indicator references

### 6. Synthetic Reviews

Lines 739-800 define synthetic review generation:
- Created as `review.tex` using standard template
- Organized by three evaluation criteria
- Each Merit Indicator assessed on 6-level scale
- Includes cross-component consistency check
- Compiled to PDF for sharing

## Development Standards

### Testing Methodology

This skill was developed using RED-GREEN-REFACTOR (TDD for documentation):
- **RED Phase**: Baseline testing identified 6 failure patterns
- **GREEN Phase**: Skill written to address all baseline failures
- **REFACTOR Phase**: Added counters for 7 potential rationalizations
- All edge cases tested

See README.md lines 57-64 for testing documentation reference.

### Writing Style Requirements

**Application.md sections must use narrative prose** (lines 627-682):

**DO**:
- Write in flowing paragraphs of narrative text
- Use logical flow and transitions between ideas
- Structure arguments through prose, not formatting
- Headers only to separate major items

**DO NOT**:
- Use bullet point lists (except rare cases where enumeration essential)
- Use excessive Markdown formatting
- Use hierarchical headers within sections
- Fragment prose into bullet points

**Rationale**: Application sections are copy-pasted into web form text boxes. Must read naturally as continuous prose.

### NSERC Formatting Requirements

Lines 713-722 specify strict formatting rules:
- **Spell out all acronyms** on first use
- **NO hyperlinks or bookmarks** anywhere in documents
- Turn off bookmarks in PDF compilation
- Configure biblatex to suppress URLs

### Git Version Control

Lines 802-845 define version control workflow:
- Commit after completing sections or major revisions
- Before/after incorporating feedback
- At natural breakpoints
- Commit messages must explain Merit Indicator context

**Example good commit message**:
```
Strengthen HQP training section with completion rates

Added specific numbers (5 PhD completions, avg 4.2 years) and career
outcomes (2 faculty, 3 industry). Addresses Merit Indicator gap
identified in review.
```

## Common Commands

### Building LaTeX Documents

**With bibliography (research proposal)**:
```bash
pdflatex -synctex=1 -interaction=nonstopmode roy-nserc-proposal.tex
biber roy-nserc-proposal
pdflatex -synctex=1 -interaction=nonstopmode roy-nserc-proposal.tex
pdflatex -synctex=1 -interaction=nonstopmode roy-nserc-proposal.tex
```

**Without bibliography (budget justification)**:
```bash
pdflatex -synctex=1 -interaction=nonstopmode roy-nserc-budget-justification.tex
```

**Clean build artifacts**:
```bash
rm -f *.aux *.log *.out *.synctex.gz *.bcf *.run.xml *.blg *.bbl
```

### Character Counting for Application.md

```bash
# Count characters in a section (whitespace counts!)
wc -c <<< "$(sed -n '/^# Section Name/,/^#/p' Application.md)"
```

## Key Resources

**Merit Indicators document** (official evaluation framework):
https://www.nserc-crsng.gc.ca/_doc/Professors-Professeurs/DG_Merit_Indicators_eng.pdf

**Application instructions** (official requirements):
https://www.nserc-crsng.gc.ca/ResearchPortal-PortailDeRecherche/Instructions-Instructions/DG-SD_eng.asp

## Critical Constraints

When working on NSERC applications in repositories using this skill:

1. **Never change Application.md structure** - reflects NSERC form structure (line 627)
2. **Never modify template files** (`nserc-template.tex`, `headers.tex`, `defs.tex`) unless explicitly requested (line 690)
3. **Always write Application.md in narrative prose**, never bullet points (lines 627-682)
4. **Always reference Merit Indicators** in feedback - generic advice forbidden (line 263)
5. **Always write for cross-disciplinary audience** - Tip #6 is non-negotiable (lines 89-94)
6. **Always check package coherence** - all components must tell coherent story (Tip #2)

## Version History

- **1.0.0** (2025-10-26): Initial release with complete NSERC Discovery Grant skill
