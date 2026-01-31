---
name: "validate-document"
description: "Validates a single document for frontmatter completeness, structure, links, style compliance, and quality. Use when the user asks to validate, check, or review a document for quality."
user-invocable: true
allowed-tools: ["Read", "Glob", "Grep", "Bash"]
---

# Validate Document Quality

Follow these steps to validate a single document for quality, completeness, and compliance.

## Step 1: Get Target File

Ask the user for the file path of the document to validate. Read the file.

## Step 2: Load Standards

1. Read `marketing/brand/style-guide.md` for voice and tone standards.
2. Read `.claude/feedback/patterns.md` for proven patterns and known issues.

## Step 3: Run Validation Checks

Perform the following validation checks and track pass/fail for each:

### Check 1: YAML Frontmatter Present and Complete (20 points)

- Frontmatter block exists (delimited by `---`)
- Required fields present: `title`, `type`, `status`, `author`, `created`
- `status` field has a valid value (draft, review, approved, archived, deprecated)
- `next-review` date is present and in the future
- `tags` array is present and non-empty
- All date fields use ISO 8601 format (YYYY-MM-DD)

### Check 2: Status Field Valid (10 points)

- Status is one of the allowed values
- If status is "approved", verify `approved-by` and `approved-date` are present
- If status is "deprecated", verify `superseded-by` is present

### Check 3: Next-Review Date Present and Valid (10 points)

- `next-review` field exists
- Date is a valid ISO 8601 date
- Date is in the future (flag if overdue)

### Check 4: Document Follows Template Structure (20 points)

- Determine the document `type` from frontmatter
- Use Glob to find the corresponding template in `templates/`
- Compare the document's heading structure against the template
- Flag missing sections or deviations

### Check 5: No Broken Internal Links (10 points)

- Extract all Markdown links from the document
- For internal links (relative paths), use Glob to verify the target file exists
- Report any broken links

### Check 6: No PHI/PII Patterns (20 points)

- Scan for patterns that may indicate PHI or PII:
  - Social Security Number patterns (NNN-NN-NNNN)
  - Email addresses that appear to be personal (not corporate)
  - Phone number patterns
  - Patient identifiers or medical record numbers
  - Date of birth patterns combined with names
- Flag any matches for human review

### Check 7: Style Guide Compliance (10 points)

- Company name used correctly ("Pivot Point Consulting" not variations)
- No banned terms (check style guide for list)
- Headings use title case consistently
- Lists use consistent formatting

## Step 4: Calculate Quality Score

Calculate a quality score from 0-100 based on the points assigned to each check:

| Check | Max Points | Score |
|-------|-----------|-------|
| Frontmatter Complete | 20 | |
| Status Valid | 10 | |
| Next-Review Valid | 10 | |
| Template Structure | 20 | |
| No Broken Links | 10 | |
| No PHI/PII | 20 | |
| Style Compliance | 10 | |
| **Total** | **100** | |

## Step 5: Output Results

Present the validation results as a formatted report:

1. **File Path** — The validated document
2. **Overall Score** — X/100 with a quality rating:
   - 90-100: Excellent
   - 75-89: Good
   - 60-74: Needs Improvement
   - Below 60: Requires Attention
3. **Check Results** — Table with each check, pass/fail, points earned, and details
4. **Issues Found** — Bulleted list of specific issues with line numbers where applicable
5. **Recommendations** — Suggested fixes for each issue

## Step 6: Log the Score

Append a JSON line to `.claude/feedback/quality-scores.jsonl`:

```json
{"file": "<file-path>", "score": <0-100>, "timestamp": "<ISO-8601>", "checks": {"frontmatter": <points>, "status": <points>, "review-date": <points>, "structure": <points>, "links": <points>, "phi-pii": <points>, "style": <points>}}
```
