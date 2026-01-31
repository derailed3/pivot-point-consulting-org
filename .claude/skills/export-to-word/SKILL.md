---
name: "export-to-word"
description: "Converts a Markdown document to Word format using Pandoc. Use when the user asks to export to Word, create a docx, or convert to Word format."
user-invocable: true
allowed-tools: ["Read", "Bash"]
---

# Export Markdown to Word

Follow these steps to convert a Markdown document to Word (.docx) format using Pandoc.

## Step 1: Get Input File

Ask the user for the Markdown file path to convert.

Read the file to verify it exists and is valid Markdown.

## Step 2: Verify Pandoc Installation

Check that Pandoc is installed:

```bash
pandoc --version
```

If Pandoc is not installed, inform the user:

> "Pandoc is required but not installed. Install it from https://pandoc.org/installing.html or run: `choco install pandoc` (Windows) / `brew install pandoc` (macOS) / `apt install pandoc` (Linux)."

Stop execution if Pandoc is not available.

## Step 3: Prepare the Markdown

Create a temporary copy of the Markdown file with YAML frontmatter stripped:

1. Read the original file
2. Identify the YAML frontmatter block (between the first `---` and the second `---`)
3. Remove the frontmatter block
4. Write the stripped content to a temporary file (e.g., same name with `.tmp.md` extension)

This prevents frontmatter from appearing as raw text in the Word output.

## Step 4: Check for Reference Document

Check if a Pandoc reference document exists:

```bash
ls .pandoc/reference.docx
```

If the reference document exists, use it for consistent branding and formatting.

## Step 5: Convert to Word

Run the Pandoc conversion:

**With reference document:**
```bash
pandoc "[temp-file]" -o "[output-path].docx" --reference-doc=.pandoc/reference.docx
```

**Without reference document:**
```bash
pandoc "[temp-file]" -o "[output-path].docx"
```

The output path should be the same directory and filename as the input, but with a `.docx` extension. Alternatively, write to a temp location if the user prefers.

## Step 6: Clean Up

Remove the temporary stripped Markdown file.

## Step 7: Report Results

Tell the user the path to the generated .docx file.

Remind the user:

> "The .docx file has been generated at: `[output-path]`. Note: Word files (.docx) are NOT stored in the git repository. Move this file to your desired location or share it directly. The .gitignore should exclude .docx files."

## Error Handling

- If Pandoc fails, capture the error output and report it to the user
- Common issues: malformed Markdown tables, unsupported Pandoc features, missing fonts
- Suggest the user fix the Markdown source and retry
