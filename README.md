# NSERC Skills

Claude Code skills for writing NSERC Discovery Grant applications.

## Overview

This plugin provides specialized guidance for preparing NSERC Discovery Grant applications, grounded in the official Merit Indicators framework and informed by successful applications from statistics and machine learning.

## Skills Included

### nserc-discovery-grant

Comprehensive skill for writing NSERC Discovery Grant applications with:

- **Merit Indicator Framework**: Three evaluation criteria (Excellence of Researcher, Merit of Proposal, Training of HQP) with 6-level rating scale
- **Top 10 Tips**: Integrated guidance from experienced NSERC reviewers
- **Cross-disciplinary Writing**: Strong emphasis on accessibility for cross-disciplinary committees (Tip #6)
- **Structured Workflows**: 6-step review process, synthetic reviews, git version control
- **Repository Organization**: Expected structure for Application.md, LaTeX attachments, and reference materials
- **Writing Style Guidance**: Narrative prose for Application.md, not bullet points or excessive Markdown

## Installation

### Option 1: Install via Marketplace (Recommended)

```bash
/plugin marketplace add droy/nserc-skills
/plugin install nserc-discovery-grant
```

The skill will be automatically available in Claude Code after installation.

### Option 2: Manual Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/droy/nserc-skills.git ~/.claude/skills/nserc-skills
   ```

2. The skill will be automatically available in Claude Code

## Usage

The skill triggers when you:
- Write or review NSERC Discovery Grant applications
- Work with Application.md or LaTeX attachments
- Request synthetic reviews
- Need Merit Indicator coverage checks

## Documentation

See the full skill documentation in `nserc-discovery-grant/SKILL.md`.

Key features:
- Merit Indicators document: https://www.nserc-crsng.gc.ca/_doc/Professors-Professeurs/DG_Merit_Indicators_eng.pdf
- Application instructions: https://www.nserc-crsng.gc.ca/ResearchPortal-PortailDeRecherche/Instructions-Instructions/DG-SD_eng.asp

## Development

This skill was developed using RED-GREEN-REFACTOR (TDD for documentation) methodology:
- **RED Phase**: Baseline testing identified 6 failure patterns
- **GREEN Phase**: Skill written to address all baseline failures
- **REFACTOR Phase**: Added counters for 7 potential rationalizations
- **Testing**: All edge cases passed

See `/test-scenarios/` in the development repository for full testing documentation.

## Contributing

This is a personal skill repository. For issues or suggestions, please open an issue on GitHub.

## License

MIT License - see LICENSE file for details

## Version History

### 1.0.0 (2025-10-26)
- Initial release
- Complete NSERC Discovery Grant skill
- Merit Indicator framework
- Repository organization guidance
- Writing style guidance (narrative prose)
- Synthetic review capability
