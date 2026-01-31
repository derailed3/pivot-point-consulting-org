---
name: "explore-knowledge"
description: "Searches and synthesizes information across the entire knowledge base. Use when the user asks to search the KB, find related documents, or explore what exists on a topic."
user-invocable: true
allowed-tools: ["Read", "Glob", "Grep", "Task"]
---

# Explore Knowledge Base

Follow these steps to search and synthesize information across the knowledge base.

## Step 1: Get Search Query

Accept a search query or topic from the user. Identify key terms and synonyms to broaden the search.

For example, if the user asks about "onboarding," also search for: "orientation," "new hire," "kickoff," "getting started."

## Step 2: Search by File Name

Use Glob to find files whose names match the topic:

- Search with `**/*[topic]*.md` patterns
- Search with `**/*[synonym]*.md` for each identified synonym
- Search in likely directories based on the topic context

Record all matching file paths.

## Step 3: Search by Content

Use Grep to search file contents for the key terms:

- Search for exact phrases
- Search for individual key terms
- Search across different file types (.md, .yml, .yaml, .json)
- Limit results to the most relevant matches (use `head_limit` to avoid overwhelming results)

Record all matching file paths and the matching lines for context.

## Step 4: Deduplicate and Rank

Combine results from file name and content searches:

1. **Deduplicate** — Remove duplicate file paths
2. **Rank by relevance** — Files that match in both name and content rank highest; files with more keyword matches rank higher
3. **Select top results** — Focus on the top 10-15 most relevant files

## Step 5: Read and Summarize

Read the top relevant files (up to 10). For each file, extract:

- **Title** — From frontmatter or first heading
- **Type** — From frontmatter
- **Status** — From frontmatter
- **Summary** — First paragraph or executive summary section
- **Key Points** — Main topics covered
- **Relevance** — Why this file matches the query

## Step 6: Synthesize Findings

Combine the information from all relevant documents into a cohesive answer:

1. **Direct Answer** — If the user asked a specific question, provide a direct answer based on the documents found.
2. **Supporting Evidence** — Reference specific documents and sections that support the answer.
3. **Gaps Identified** — Note if the knowledge base lacks information on any aspect of the query.

## Step 7: Output Results

Present the findings in a structured format:

### Relevant Documents

| # | Document | Type | Status | Path |
|---|----------|------|--------|------|
| 1 | [Title] | [Type] | [Status] | [Full Path] |
| ... | ... | ... | ... | ... |

### Summary of Each Document

For each relevant document, provide:

- **[Title]** (`[path]`)
  - Brief summary of what this document covers
  - Key points relevant to the user's query

### Synthesized Answer

A cohesive narrative answering the user's question, drawing from all relevant documents. Include inline references to source documents (e.g., "According to the [Document Title]...").

### Knowledge Gaps

If applicable, note areas where the knowledge base could be expanded. Suggest which skills could be used to fill the gaps (e.g., "Consider using `/new-knowledge-article` to create documentation on [topic]").
