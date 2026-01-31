---
name: "import-from-word"
description: "Converts a Word document to Markdown and adds YAML frontmatter. Use when the user asks to import from Word, convert a docx, or bring in a Word document."
user-invocable: true
allowed-tools: ["Read", "Write", "Bash"]
---

# Import Word Document to Markdown

Follow these steps to convert a Word (.docx) document to Markdown with proper YAML frontmatter.

## Step 1: Get Input File and Target

Ask the user for:

- **Input .docx file path** — The Word document to convert
- **Target directory** — Where in the knowledge base the Markdown file should be saved
- **Document type** — What type of document this is (e.g., policy, proposal, knowledge-article, etc.)

## Step 2: Verify Pandoc Installation

Check that Pandoc is installed:

```bash
pandoc --version
```

If Pandoc is not installed, inform the user:

> "Pandoc is required but not installed. Install it from https://pandoc.org/installing.html or run: `choco install pandoc` (Windows) / `brew install pandoc` (macOS) / `apt install pandoc` (Linux)."

Stop execution if Pandoc is not available.

## Step 3: Convert to Markdown

Run the Pandoc conversion:

```bash
pandoc "[input-path]" -t markdown -o "[temp-output-path].md"
```

Read the converted Markdown file to inspect the result.

## Step 4: Normalize Formatting

Clean up the converted Markdown to match repository conventions:

1. **Headings** — Ensure ATX-style headings (`#`, `##`, `###`) are used consistently
2. **Lists** — Normalize list markers (use `-` for unordered lists)
3. **Tables** — Ensure tables use pipe syntax and are properly aligned
4. **Links** — Convert any absolute file paths to relative links
5. **Images** — Note any embedded images (Pandoc may extract them); inform the user about image handling
6. **Line breaks** — Remove excessive blank lines; ensure single blank line between sections
7. **Whitespace** — Remove trailing whitespace from lines
8. **Encoding** — Ensure UTF-8 encoding

## Step 5: Add YAML Frontmatter

Add a complete YAML frontmatter skeleton with all required fields:

```yaml
---
title: "[Extracted from document title or first heading]"
type: "[document-type provided by user]"
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
source: "[original .docx filename]"
imported-from: "word"
next-review: "YYYY-MM-DD"
tags:
  - imported
  - [document-type]
---
```

- Extract the `title` from the document's first heading or filename
- Set `created` to today's date
- Set `next-review` to 90 days from today
- Note the original source filename for traceability

## Step 6: Write the Final File

Write the normalized Markdown with frontmatter to the target directory:

```
[target-directory]/[filename-slug].md
```

Use lowercase-hyphens for the filename, derived from the document title. Create intermediate directories if needed.

## Step 7: Report Results

Tell the user:

1. The path to the new Markdown file
2. Any formatting issues that need manual attention (e.g., complex tables, embedded images, tracked changes)
3. Remind that the original .docx is NOT stored in the repository
4. Suggest running `/validate-document` to check the imported document's quality

> "Word document imported and converted. The .docx source file is NOT stored in the repository. Please review the converted Markdown for any formatting issues and fill in all [PLACEHOLDER] values in the frontmatter."

## Step 8: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "import-from-word", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created", "source": "<original-docx-filename>"}
```
