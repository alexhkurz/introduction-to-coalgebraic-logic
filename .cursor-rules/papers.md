# Paper Management Rules

## Adding a New Paper

When adding a paper to the project, follow these steps:

1. **Add BibTeX entry** to `references.bib` following the citation key format in `references.md`
2. **Add entry to `papers/README.md`** in the Papers section
3. **Create a note file** named `{citationkey}.md` in the `papers/` folder

## README Entry Format

Each paper entry in `papers/README.md` must be a **single-line bullet point** with the following format:

```
- {Title} - {Author1} & {Author2} ({Year}) - [PDF]({pdf_url}) - [`{citationkey}`]({citationkey}.md)
```

**Format details:**
- Title: Full paper title in sentence case
- Authors: Use "&" between authors, format as "Lastname & Lastname" (first names omitted in README)
- Year: 4-digit year in parentheses
- PDF link: Include `[PDF](url)` if PDF is available, otherwise omit this part
- Citation key: Link to the note file using backticks for the key: `` [`citationkey`](citationkey.md) ``

**Example:**
```
- Abstraction boundaries and spec driven development in pure mathematics - Commelin & Topaz (2023) - [PDF](https://arxiv.org/pdf/2309.14870.pdf) - [`commelin2023`](commelin2023.md)
```

## Note File Structure

Each note file (`{citationkey}.md`) must follow this structure:

```markdown
# {Title}

**Authors:** {Full Author Names}  
**Year:** {Year}  
**Citation Key:** `{citationkey}`  
**arXiv:** [{arxiv_id}]({arxiv_abs_url}) (if applicable)  
**PDF:** [Download PDF]({pdf_url})

## Summary

{2-3 paragraph summary of the paper's main contributions and arguments}

## Relevance to Our Project

(IMPORTANT)

Does the paper contain material that could be recast in the framework of [](../contents/)

## Required Actions When Adding a Paper

1. **Extract paper metadata:**
   - Title, authors, year from source
   - PDF URL (if available)
   - arXiv ID (if applicable)

2. **Download and convert PDF (if available):**
   - Download PDF to `papers/{citationkey}.pdf` using curl or wget
   - Convert to text: `pdftotext papers/{citationkey}.pdf papers/{citationkey}.txt`
   - **Important:** PDFs are ignored by git (via `.gitignore`), but text files are tracked
   - Text files make the paper content accessible to coding assistants for analysis and extraction
   - Example: `curl -L "https://arxiv.org/pdf/2309.14870.pdf" -o papers/commelin2023.pdf && pdftotext papers/commelin2023.pdf papers/commelin2023.txt`

3. **Create BibTeX entry** in `references.bib` with proper citation key format

4. **Add to README:** Single-line bullet point entry in `papers/README.md`

5. **Create note file:** 
   - Named `{citationkey}.md`
   - Include all metadata at top
   - Write summary (2-3 paragraphs)
   - Create relevance section

6. **Extract relevance points:**
   - Read paper sections (use the `.txt` file for easier text processing)
   - Identify relevance to project sections:


## Important Notes

- **Keep README concise:** Only basic info (title, authors, year, links) in README
- **Detailed content in note files:** Summary, relevance, concepts, and notes belong in the note file
- **PDF links:** Always include PDF link in README if available
- **Section relevance:** Organize relevance points by paper sections, not project sections
- **Update as you read:** Note files are living documents - update section titles and relevance points as you read
- **PDF storage:** PDFs are stored locally in `papers/` folder but are ignored by git (not committed to repository)
- **Text files:** Text files (`.txt`) are committed to git for easy access by coding assistants - they enable programmatic analysis of paper content

## Git Configuration

`papers/.gitignore` is configured to:
- Ignore all PDF files in `papers/` folder 
- Track text files in `papers/` folder 

