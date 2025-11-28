# Coding Assistant Rules

This folder contains rules and guidelines for AI coding assistants working on this project.

## Files

- `references.md` - Rules for formatting BibTeX references and citation keys
- `papers.md` - Rules for managing papers, creating note files, and maintaining the papers directory

## Usage

When working on this project, coding assistants should:
1. Follow the formatting rules specified in these files
2. Maintain consistency with existing patterns
3. Ask for clarification if rules conflict or are unclear

## Key Workflows

### Adding a New Paper

When a user provides a paper (URL, PDF, or reference):
1. Extract metadata (title, authors, year, PDF URL)
2. Create BibTeX entry in `references.bib` following citation key format
3. Add single-line entry to `papers/README.md`
4. Create note file `{citationkey}.md` in `papers/` folder with full structure
5. Save the pdf in papers as `{citationkey}.pdf`
6. Convert the pdf to txt in papers as `{citationkey}.txt`
7. Extract summary and initial relevance points from the .txt as specified in `papers.md`.

