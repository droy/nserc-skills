# Repository Organization and Workflow

When working with an organized NSERC application repository, follow these patterns for consistency and version control.

## Repository Structure

**Expected organization**:
```
nserc-dg-2025/
├── Application.md                      # Text-only responses for web form
├── nserc-template.tex                  # Master template for all attachments
├── headers.tex                         # Theorem environments, packages, fonts
├── defs.tex                            # Custom macros and notation
├── roy-nserc-proposal.tex              # Research proposal attachment
├── roy-nserc-budget-justification.tex  # Budget justification attachment
├── roy-nserc-references.tex            # List of references attachment
├── references.bib                      # Bibliography file
├── CCV.pdf                             # Rendered Common CV
├── review.tex                          # Synthetic review (if requested)
├── past-applications/                  # Exemplar NSERC DG applications
│   ├── colleague1-stats/               # Example from statistics colleague
│   ├── colleague2-stats/               # Example from statistics colleague
│   ├── colleague3-stats/               # Example from statistics colleague
│   ├── applicant-2020/                 # Applicant's 2020 application
│   ├── applicant-2020_RESULTS/         # 2020 application results
│   ├── applicant-2015/                 # Applicant's 2015 application
│   └── applicant-2015_RESULTS/         # 2015 application results
├── samples-of-research-contributions/  # Three papers submitted as samples
│   ├── paper1.pdf
│   ├── paper2.pdf
│   └── paper3.pdf
├── writing-samples/                    # Related writing showing applicant's style
│   └── ...                             # Papers, proposals (not publicly available)
├── most-significant-contributions/     # Five bodies of work
│   ├── contribution1/                  # Body of work for MSC #1
│   ├── contribution2/                  # Body of work for MSC #2
│   ├── contribution3/                  # Body of work for MSC #3
│   ├── contribution4/                  # Body of work for MSC #4
│   └── contribution5/                  # Body of work for MSC #5
└── initial-drafts/                     # Early work on grant application
    ├── NOI.pdf                         # Notice of Intent submission
    ├── conversation1.md                # LLM conversations about grant
    ├── conversation2.md                # Additional planning discussions
    └── ...                             # May reference PDFs in same directory
```

## Reference Materials in Repository

The repository contains extensive reference materials to inform application development:

### past-applications/
- **Purpose**: Exemplar NSERC Discovery Grant applications for reference
- **Contents**:
  - Three successful applications from statistics colleagues (generally more conservative/less hype than ML)
  - Two past applications from applicant with results (subfolders with `_RESULTS` suffix)
- **How to use**:
  - Review structure and presentation style
  - Observe how colleagues frame significance, feasibility, HQP training
  - Learn from past feedback in `_RESULTS` folders
  - Note discipline differences (statistics vs ML conventions)

### samples-of-research-contributions/
- **Purpose**: Three papers submitted as research contribution samples
- **How to use**:
  - Ensure consistency between papers and how they're described in Application.md
  - Reference when writing "Most Significant Contributions" section
  - Check that proposal builds on or extends these contributions

### writing-samples/
- **Purpose**: Related writing (papers, proposals) showing applicant's typical writing style
- **Contents**: Papers and related proposals (generally not publicly available)
- **How to use**:
  - Understand applicant's voice and terminology
  - Maintain consistency in how past work is described
  - Reference when describing research program and trajectory

### most-significant-contributions/
- **Purpose**: Five subfolders, each representing a body of work (significant research contribution)
- **Organization**: Each subfolder contains papers/materials for one contribution
- **How to use**:
  - Directly pertains to "Most Significant Contributions" section of Application.md
  - Each contribution should be described in Application.md with references to materials in subfolder
  - Ensure descriptions are accessible (Tip #6) while showing impact

### initial-drafts/
- **Purpose**: Early work on grant application including Notice of Intent and planning discussions
- **Contents**:
  - NOI.pdf - Notice of Intent submission providing proposal summary
  - Markdown files documenting conversations with LLMs about grant development
  - Additional planning materials and brainstorming sessions
  - Markdown files may reference PDFs in the same directory
- **How to use**:
  - Review NOI.pdf to understand initial proposal framing
  - Check LLM conversations for early decisions about research direction
  - Ensure final application is consistent with NOI commitments
  - Understand evolution of ideas from initial drafts to final application
  - Reference when revising to maintain coherent narrative thread

### CCV.pdf
- **Purpose**: Rendered Common CV (curriculum vitae)
- **How to use**:
  - Cross-reference with "Excellence of Researcher" claims
  - Verify consistency with past contributions descriptions
  - Ensure HQP supervision record matches CCV
  - Check that expertise demonstrated in CCV aligns with proposed research

## Application.md - Text-Only Responses

**Purpose**: Collects text-only responses that will be copy-pasted into NSERC's web application form.

**Structure**:
- Sections marked with Markdown headers (`#`)
- Character limits noted in square brackets `[3,000 characters max]`
- Metadata in square brackets (not submitted)
- Content organized to match NSERC application form structure

**Character limits** (common sections):
- Summary: 3,000 characters
- Relationship to Other Research Support: 12,000 characters
- HQP Training Plan: 9,000 characters
- Past Contributions to HQP Training: 6,000 characters
- Most Significant Contributions: 9,000 characters
- Additional Information on Contributions: 3,000 characters

**Character counting**:
```bash
# Use the bundled helper script
./scripts/count_chars.sh "Section Name"

# Or count manually (whitespace counts!)
wc -c <<< "$(sed -n '/^# Section Name/,/^#/p' Application.md)"
```

**CRITICAL**: Do NOT change the structure of Application.md. The sections and organization reflect the current NSERC application form structure, which cannot be changed. Only edit content within existing sections.

### Writing Style for Application.md

**DO**:
- Write in **flowing paragraphs** of narrative text
- Use logical flow and transitions between ideas within paragraphs
- Structure arguments through prose, not formatting
- Use headers ONLY to separate major items (e.g., each of the five Most Significant Contributions)
- Write like you're telling a coherent story about your research

**DO NOT**:
- Use bullet point lists (except in very rare cases where enumeration is essential)
- Use excessive Markdown formatting (bold, italics, etc.)
- Use hierarchical headers within sections (no `##`, `###` within a form section)
- Break up prose into fragmented bullet points
- Use bullet lists when a paragraph would be clearer

**Example - WRONG (too much Markdown)**:
```markdown
## HQP Training Plan

My training approach includes:
- Weekly one-on-one meetings
- Group seminars every two weeks
- Conference presentation opportunities
- Collaborative research projects

**Technical skills:**
- Machine learning algorithms
- Statistical inference
- Python programming

**Professional skills:**
- Scientific writing
- Oral presentation
- Project management
```

**Example - CORRECT (flowing narrative)**:
```markdown
# HQP Training Plan

My training program centers on developing both technical and professional skills through hands-on research experience. Students meet with me weekly for one-on-one discussions of their research progress, where we work through technical challenges and plan next steps. These individual meetings are complemented by biweekly group seminars where students present their work to peers, developing both presentation skills and the ability to give and receive constructive feedback.

On the technical side, students develop expertise in machine learning algorithms, statistical inference, and computational implementation through their research projects. I emphasize learning by doing—students implement methods from scratch before using existing libraries, which builds deep understanding. Professional development is equally important: students write papers, present at conferences, and learn to manage long-term research projects independently.

[... continues in paragraph form]
```

**When limited structure is acceptable**:
- **Most Significant Contributions**: Use a header (e.g., `## Contribution 1: [Title]`) to separate each of the five contributions, then write each contribution description in paragraphs
- **Enumeration of specific items**: If you must list (e.g., "three main objectives"), write as numbered prose: "First, ... Second, ... Third, ..." NOT as bullet points

**Why this matters**: NSERC application sections will be copy-pasted into web form text boxes. The narrative needs to read naturally as continuous prose, not as a slide deck or outline. Reviewers read applications as documents, not structured lists.

## LaTeX Attachments - Template System

**Template hierarchy**:
1. **`nserc-template.tex`**: Master template with document class, margins, font size
2. **`headers.tex`**: Theorem environments, packages, bibliography setup (imported by template)
3. **`defs.tex`**: Custom macros like `\Reals`, `\KL`, `\EE` (imported by template)

**IMPORTANT**: Do NOT change template files (`nserc-template.tex`, `headers.tex`, `defs.tex`) unless explicitly requested by user. These provide consistent formatting across all attachments.

**Document naming convention**: `roy-nserc-{attachment-name}.tex`

**Standard attachment structure**:
```latex
% !BIB program = biber
\pdfoutput=1

\input{nserc-template.tex}
\title{Attachment Name}

\begin{document}
% Content goes here
\end{document}
```

**Important**:
- Do NOT add `\maketitle` - template auto-generates compact header
- All attachments use same template for consistency
- Standard formatting: 0.75" margins, 12pt font, letterpaper
- Uses `marginalia.sty` for collaborative comments (toggle with `hide=false`)

**LaTeX formatting for version control**:
- **One sentence per line**: Put each sentence on its own line in the LaTeX source
- LaTeX ignores single line breaks when rendering (treats them as spaces)
- This practice dramatically shrinks git commit diffs by isolating changes to specific sentences
- Makes it much easier to review changes and track the evolution of arguments
- Example:
  ```latex
  This is the first sentence about our methodology.
  This is the second sentence providing additional detail.
  This is the third sentence connecting to prior work.
  ```

**NSERC formatting requirements**:
- **Spell out all acronyms and abbreviations** the first time they appear
  - Example: "machine learning (ML)" then "ML" subsequently
  - Applies to both Application.md and LaTeX attachments
- **Self-reference citations**: Use [C#] and [J#] format
  - [C#] for conference papers, [J#] for journal papers
  - The # corresponds to the publication number in your CCV
  - Example: `Building on our prior work~\cite{roy2020} [J12, C34], we propose...`
  - Makes it easy for reviewers to cross-reference your CCV
  - See application-components.md reference file for detailed guidance
- **Do NOT include hyperlinks or bookmarks** in documents
  - NO hyperlinks anywhere - not in body text, not in bibliography, nowhere
  - Turn off "Create Bookmarks" option in PDF compilation
  - For pdflatex: ensure `\hypersetup{bookmarks=false}` in template
  - For biblatex: use `\hypersetup{hidelinks}` or configure to suppress URLs in bibliography

## Building Documents

**For proposal (with bibliography)**:
```bash
pdflatex -synctex=1 -interaction=nonstopmode roy-nserc-proposal.tex
biber roy-nserc-proposal
pdflatex -synctex=1 -interaction=nonstopmode roy-nserc-proposal.tex
pdflatex -synctex=1 -interaction=nonstopmode roy-nserc-proposal.tex
```

**For budget justification (no bibliography)**:
```bash
pdflatex -synctex=1 -interaction=nonstopmode roy-nserc-budget-justification.tex
```

**Clean build artifacts**:
```bash
rm -f *.aux *.log *.out *.synctex.gz *.bcf *.run.xml *.blg *.bbl
```

## Synthetic Reviews

When user requests a "synthetic review" of their application:

**Purpose**: Create a comprehensive review document simulating reviewer perspective, organized by Merit Indicators.

**Workflow**:
1. Analyze all application components (Application.md + LaTeX attachments)
2. Create `review.tex` using the standard template structure
3. Organize review by three evaluation criteria
4. For each Merit Indicator item:
   - Assess current state on 6-level scale
   - Identify strengths
   - Identify gaps or weaknesses
   - Suggest specific improvements
5. Include cross-component consistency assessment
6. Compile and share PDF with user

**Review.tex structure**:
```latex
% !BIB program = biber
\pdfoutput=1

\input{nserc-template.tex}
\title{Synthetic Review - NSERC Discovery Grant Application}

\begin{document}

\section{Excellence of the Researcher}

\subsection{Contributions to Research}
% Assessment, strengths, gaps, suggestions

\subsection{Contributions to Training of HQP}
% ...

\section{Merit of the Proposal}
% ...

\section{Training of HQP}
% ...

\section{Cross-Component Consistency}
% Package coherence assessment

\section{Overall Assessment and Priorities}
% Summary and prioritized action items

\end{document}
```

**Review perspective**:
- Write from cross-disciplinary reviewer's viewpoint
- Reference Merit Indicators explicitly
- Use 6-level scale terminology
- Be constructive but rigorous
- Prioritize issues by impact on rating

## Git Version Control

**Use git to track versions frequently**:

**Commit frequently** - Don't wait for "substantial edits":
- Commit after completing any logical change, even small ones
- Frequent commits create fine-grained history that's easier to review
- Combined with one-sentence-per-line LaTeX formatting, commits become very readable
- Small commits are easier to revert if needed
- Better to have many small commits than few large ones

**When to commit**:
- After completing a section of Application.md
- After revising a paragraph or fixing a specific issue in LaTeX attachments
- Before and after incorporating feedback
- Before trying speculative changes
- At natural breakpoints (end of work session, completed iteration)
- After addressing a single Merit Indicator item
- When switching between different sections or tasks

**Commit message guidance**:
```bash
# Good: Explains what changed and why
git commit -m "Strengthen HQP training section with completion rates

Added specific numbers (5 PhD completions, avg 4.2 years) and career
outcomes (2 faculty, 3 industry). Addresses Merit Indicator gap
identified in review."

# Bad: Too vague
git commit -m "Updated HQP section"
```

**Git workflow**:
```bash
# Before starting work
git status  # Verify clean state

# After substantial edits
git add Application.md roy-nserc-proposal.tex
git commit -m "Descriptive message with Merit Indicator context"

# View history of a section
git log -p Application.md
```

**Benefits**:
- Track evolution of application over time
- Revert problematic changes
- Compare versions to see improvements
- Document rationale in commit messages
- Maintain clean checkpoint history

**Important**: Git commits are part of your research process documentation. Commit messages should explain the reasoning behind changes (similar to mathematical insights in working-paper skill).

## Workflow Integration with This Skill

**Typical session**:
1. **Review current state**: Read Application.md and compiled PDFs
2. **Identify Merit Indicator gaps**: Use checklist reference file
3. **Make edits**: Update Application.md or LaTeX files
4. **Check character limits**: Use `wc` or `scripts/count_chars.sh` for Application.md sections
5. **Build and review**: Compile LaTeX, check output
6. **Commit changes**: Git commit with Merit Indicator context
7. **Verify package coherence**: Check cross-component consistency

**When requesting synthetic review**:
1. Ensure all files are up-to-date and compiled
2. Request synthetic review
3. Agent creates `review.tex` with systematic Merit Indicator assessment
4. Compile review, read carefully
5. Address high-priority gaps
6. Iterate
