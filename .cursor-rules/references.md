# Reference Formatting Rules

**Note:** When adding a paper to `references.bib`, also follow the paper management workflow in `papers.md` to add it to the papers directory.

## Bibliography System

This project uses **BibLaTeX** with **author-year style** (APA format) for citations.

### Compilation Process

The compilation sequence is:
1. `pdflatex main.tex` - First pass
2. `biber main` - Process bibliography (replaces bibtex)
3. `pdflatex main.tex` - Second pass
4. `pdflatex main.tex` - Final pass

**Important**: Use `biber` instead of `bibtex` for processing the bibliography.

## Citation Key Format

**Primary format**: `{LastnameYear}`

Examples:
- `commelin2023` for Commelin & Topaz (2023)
- `smith2024` for Smith et al. (2024)

**Alternative formats** (use when needed for disambiguation):
- `{LastnameYearLetter}` - When multiple papers by same first author in same year
  - Example: `smith2024a`, `smith2024b`
- `{LastnameLastnameYear}` - When two authors, use both last names
  - Example: `commelintopaz2023` for Commelin & Topaz (2023)
- `{LastnameYearShortTitle}` - For very common names or when disambiguation needed
  - Example: `smith2024abstraction` if title keyword helps

**Rules:**
1. Use lowercase for citation keys
2. Remove spaces and special characters
3. Use first author's last name only (unless using two-author format)
4. Use 4-digit year
5. Prefer simplicity: `lastnameyear` is the default

## BibTeX Entry Format

### Articles (Journal/Conference)
```bibtex
@article{key,
  title={Title of the Article},
  author={Lastname, Firstname and Lastname, Firstname},
  journal={Journal Name},
  volume={X},
  number={Y},
  pages={Z--W},
  year={YYYY},
  publisher={Publisher Name},
  doi={10.xxxx/xxxxx},
  url={https://...}
}
```

### arXiv Preprints
```bibtex
@article{key,
  title={Title of the Paper},
  author={Lastname, Firstname and Lastname, Firstname},
  journal={arXiv preprint arXiv:YYYY.NNNNN},
  year={YYYY},
  eprint={YYYY.NNNNN},
  archivePrefix={arXiv},
  primaryClass={cs.XX},  % or math.XX, etc.
  url={https://arxiv.org/pdf/YYYY.NNNNN},
  note={[Accessed: \today]}
}
```

### Books
```bibtex
@book{key,
  title={Title of the Book},
  author={Lastname, Firstname},
  publisher={Publisher Name},
  address={City, Country},
  year={YYYY},
  isbn={ISBN-13},
  url={https://...}
}
```

### In Proceedings
```bibtex
@inproceedings{key,
  title={Title of the Paper},
  author={Lastname, Firstname and Lastname, Firstname},
  booktitle={Proceedings of Conference Name},
  pages={X--Y},
  year={YYYY},
  organization={Organization},
  doi={10.xxxx/xxxxx},
  url={https://...}
}
```

## Formatting Guidelines

1. **Authors**: Format as `Lastname, Firstname and Lastname, Firstname` (use `and` between authors)
2. **Titles**: Use sentence case, preserve capitalization of proper nouns
3. **URLs**: Always include `\url{...}` for web resources
4. **DOIs**: Include when available, format as `10.xxxx/xxxxx`
5. **Dates**: Use `\today` for access dates in notes
6. **Consistency**: Keep field order consistent across entries

## Citation Commands

With BibLaTeX author-year style, use:
- `\cite{key}` - Produces: (Author, Year)
- `\parencite{key}` - Produces: (Author, Year) - explicit parentheses
- `\textcite{key}` - Produces: Author (Year) - for narrative citations
- `\footcite{key}` - Produces footnote citation

**Note**: The `authoryear` style automatically formats citations in APA author-date format.

## Special Cases

- **Multiple authors (3+)**: List all authors, or use "et al." only if explicitly needed
- **No author**: Use `@misc` type with organization or title as key identifier
- **Preprints later published**: Keep arXiv entry, add published version as separate entry if significantly different

