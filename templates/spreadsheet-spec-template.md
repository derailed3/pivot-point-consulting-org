---
title: "[Spreadsheet Specification Title]"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "approved"
category: "template"
tags: ["template", "spreadsheet-spec", "data", "reporting"]
reviewers: ["@derailed3"]
next-review: "2026-07-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
---

# Spreadsheet Specification: [SPREADSHEET_NAME]

## Purpose

[PLACEHOLDER: Describe the purpose of this spreadsheet. What business need does it serve? Who will use it? How often will it be updated?]

| | |
|---|---|
| **Spreadsheet Name** | [SPREADSHEET_NAME] |
| **Owner** | [OWNER_NAME] |
| **Primary Users** | [USER_ROLES] |
| **Update Frequency** | [FREQUENCY e.g., Daily, Weekly, Monthly] |
| **Data Source(s)** | [DATA_SOURCES] |
| **File Format** | [FORMAT e.g., .xlsx, .csv, Google Sheets] |
| **Location** | [FILE_LOCATION_OR_URL] |

## Data Structure

### Sheet 1: [SHEET_NAME]

[PLACEHOLDER: Describe the structure of this sheet, including all columns and row organization.]

#### Columns

| Column | Header | Data Type | Description | Required | Validation Rules |
|--------|--------|-----------|-------------|----------|-----------------|
| A | [HEADER_A] | [TYPE e.g., Text] | [DESCRIPTION_A] | [YES/NO] | [RULES_A] |
| B | [HEADER_B] | [TYPE e.g., Number] | [DESCRIPTION_B] | [YES/NO] | [RULES_B] |
| C | [HEADER_C] | [TYPE e.g., Date] | [DESCRIPTION_C] | [YES/NO] | [RULES_C] |
| D | [HEADER_D] | [TYPE e.g., Currency] | [DESCRIPTION_D] | [YES/NO] | [RULES_D] |
| E | [HEADER_E] | [TYPE e.g., Dropdown] | [DESCRIPTION_E] | [YES/NO] | [RULES_E] |
| F | [HEADER_F] | [TYPE e.g., Formula] | [DESCRIPTION_F] | [AUTO] | [RULES_F] |

#### Rows

- **Header Row:** Row 1 - Column headers
- **Data Rows:** Row 2 onwards - One row per [ENTITY e.g., project, client, transaction]
- **Summary Row:** [LOCATION e.g., Last row] - Totals and aggregates

### Sheet 2: [SHEET_NAME] (if applicable)

[PLACEHOLDER: Repeat column/row structure for additional sheets.]

#### Columns

| Column | Header | Data Type | Description | Required | Validation Rules |
|--------|--------|-----------|-------------|----------|-----------------|
| A | [HEADER_A] | [TYPE] | [DESCRIPTION_A] | [YES/NO] | [RULES_A] |
| B | [HEADER_B] | [TYPE] | [DESCRIPTION_B] | [YES/NO] | [RULES_B] |
| C | [HEADER_C] | [TYPE] | [DESCRIPTION_C] | [YES/NO] | [RULES_C] |

## Formulas

[PLACEHOLDER: Document all formulas used in the spreadsheet. Include the cell reference, formula, and explanation.]

<!-- Formula documentation as comments for reference -->

| Cell/Range | Formula | Description |
|-----------|---------|-------------|
| [CELL_1 e.g., F2] | `[FORMULA_1 e.g., =SUM(D2:E2)]` | [DESCRIPTION_1 e.g., Total cost calculation] |
| [CELL_2 e.g., G2] | `[FORMULA_2 e.g., =IF(F2>1000,"High","Low")]` | [DESCRIPTION_2 e.g., Priority classification] |
| [CELL_3 e.g., H2] | `[FORMULA_3 e.g., =VLOOKUP(A2,Sheet2!A:B,2,FALSE)]` | [DESCRIPTION_3 e.g., Category lookup] |
| [CELL_4 e.g., F100] | `[FORMULA_4 e.g., =SUBTOTAL(9,F2:F99)]` | [DESCRIPTION_4 e.g., Grand total] |
| [CELL_5] | `[FORMULA_5]` | [DESCRIPTION_5] |

### Conditional Formatting Rules

| Range | Condition | Format | Purpose |
|-------|-----------|--------|---------|
| [RANGE_1] | [CONDITION_1] | [FORMAT_1 e.g., Red fill] | [PURPOSE_1] |
| [RANGE_2] | [CONDITION_2] | [FORMAT_2 e.g., Green fill] | [PURPOSE_2] |

## Sample Data

### Markdown Table Format

[PLACEHOLDER: Provide sample data to illustrate the expected spreadsheet content.]

| [HEADER_A] | [HEADER_B] | [HEADER_C] | [HEADER_D] | [HEADER_E] | [HEADER_F] |
|------------|------------|------------|------------|------------|------------|
| [SAMPLE_A1] | [SAMPLE_B1] | [SAMPLE_C1] | [SAMPLE_D1] | [SAMPLE_E1] | [SAMPLE_F1] |
| [SAMPLE_A2] | [SAMPLE_B2] | [SAMPLE_C2] | [SAMPLE_D2] | [SAMPLE_E2] | [SAMPLE_F2] |
| [SAMPLE_A3] | [SAMPLE_B3] | [SAMPLE_C3] | [SAMPLE_D3] | [SAMPLE_E3] | [SAMPLE_F3] |

### CSV Format

[PLACEHOLDER: Provide the same sample data in CSV format for easy import.]

```csv
[HEADER_A],[HEADER_B],[HEADER_C],[HEADER_D],[HEADER_E],[HEADER_F]
[SAMPLE_A1],[SAMPLE_B1],[SAMPLE_C1],[SAMPLE_D1],[SAMPLE_E1],[SAMPLE_F1]
[SAMPLE_A2],[SAMPLE_B2],[SAMPLE_C2],[SAMPLE_D2],[SAMPLE_E2],[SAMPLE_F2]
[SAMPLE_A3],[SAMPLE_B3],[SAMPLE_C3],[SAMPLE_D3],[SAMPLE_E3],[SAMPLE_F3]
```

## Output Format

### Markdown Table

[PLACEHOLDER: Show the expected output format as a Markdown table.]

| [OUTPUT_HEADER_1] | [OUTPUT_HEADER_2] | [OUTPUT_HEADER_3] | [OUTPUT_HEADER_4] |
|-------------------|-------------------|-------------------|-------------------|
| [OUTPUT_1] | [OUTPUT_2] | [OUTPUT_3] | [OUTPUT_4] |
| **Totals** | | | **[TOTAL]** |

### CSV

[PLACEHOLDER: Show the expected output format as CSV.]

```csv
[OUTPUT_HEADER_1],[OUTPUT_HEADER_2],[OUTPUT_HEADER_3],[OUTPUT_HEADER_4]
[OUTPUT_1],[OUTPUT_2],[OUTPUT_3],[OUTPUT_4]
```

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial template | [Approver] |
