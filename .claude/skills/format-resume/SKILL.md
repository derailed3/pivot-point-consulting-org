---
name: "format-resume"
description: "Formats consultant resumes from Word or PDF into the PPC standardized template. Use when the user asks to format a resume, reformat a CV, or standardize a consultant profile. Highest-ROI recruitment skill."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Format Consultant Resume

Follow these steps to format a consultant resume into the PPC standardized template.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/resume-template.md` for the canonical PPC resume structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Get Input File

Ask the user for the input file path.

### If the file is .docx (Word):

Use Pandoc to convert to plain text:

```bash
pandoc "[input-path]" -t plain -o "[temp-path].txt"
```

Then read the converted text file.

### If the file is .pdf:

Attempt conversion with Pandoc or pdftotext:

```bash
pandoc "[input-path]" -t plain -o "[temp-path].txt"
```

If that fails, ask the user to provide a text or Word version.

### If the file is .md or .txt:

Read the file directly.

## Step 3: Extract Information

Parse the resume content and extract the following fields:

- **Full Name**
- **Contact Information** (email, phone, location)
- **Professional Summary** — 3-4 sentence overview of expertise and experience
- **Work Experience** — For each role: Company, Title, Dates, Key Accomplishments (bulleted)
- **Skills** — Technical skills, tools, methodologies, certifications
- **Certifications** — Name, issuing body, date obtained, expiration
- **Education** — Degree, institution, graduation date

## Step 4: Reformat into PPC Template

Using the PPC resume template structure, reformat the extracted information:

1. **Header** — Consultant name, title/role, contact info (PPC-branded format).
2. **Professional Summary** — 3-4 sentences. Active voice. Focus on healthcare IT consulting expertise, years of experience, and key differentiators.
3. **Core Competencies** — Grid or bulleted list of key skills and domains.
4. **Professional Experience** — Reverse chronological. For each role:
   - Company | Title | Dates
   - 3-5 achievement-oriented bullets using action verbs and quantified results where possible
5. **Certifications** — Table with: Certification, Issuing Body, Year.
6. **Education** — Degree, Institution, Year.
7. **Technical Skills** — Categorized list (EHR Systems, Cloud Platforms, Methodologies, Tools, etc.).

### Formatting Rules:

- Use consistent date formats (MMM YYYY)
- Quantify achievements where possible ("Reduced go-live issues by 40%")
- Use action verbs to start each bullet (Led, Implemented, Designed, Optimized)
- Remove personal pronouns (I, my, me)
- Ensure no PII beyond name and professional contact info

Include full YAML frontmatter:

```yaml
---
title: "Resume — [Full Name]"
type: resume
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
consultant-name: "[Full Name]"
current-role: "[PLACEHOLDER]"
next-review: "YYYY-MM-DD"
tags:
  - resume
  - recruiting
---
```

## Step 5: Write the File

Determine the current year. Write the file to:

```
recruiting/resumes/[year]/[consultant-name-slug].md
```

Use lowercase-hyphens for the filename (e.g., `jane-doe.md`). Create intermediate directories if needed.

## Step 6: Suggest Next Step

After writing the file, suggest:

> "Resume formatted and saved. To generate a Word version, run `/export-to-word`. To create a client-facing sizzle sheet, run `/generate-sizzle`."

## Step 7: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "format-resume", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created", "source": "<input-path>"}
```
