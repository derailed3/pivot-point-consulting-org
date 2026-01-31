---
name: "new-blog-post"
description: "Generates thought leadership blog posts with SEO metadata for healthcare IT topics. Use when the user asks to create a blog post, article, or thought piece. 800-1200 words with keyword optimization."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Blog Post

Generate a thought leadership blog post for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the blog post template** from `templates/blog-post-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Topic**: The healthcare IT subject to cover.
   - **Target audience**: Who this post is written for (e.g., CIOs, CMIOs, IT Directors, clinical leadership).
   - **Key message or angle**: The primary insight or argument.
   - **Target keywords**: SEO keywords to incorporate (or suggest appropriate ones).

5. **Check for duplicates** by scanning `marketing/content/blog-posts/` for existing posts on the same topic. Alert the user if a similar post already exists.

6. **Generate the blog post** with the following structure:
   - **Frontmatter** (YAML):
     - `title`: Compelling, SEO-friendly title (under 70 characters)
     - `slug`: URL-friendly version of the title
     - `author`: [PLACEHOLDER]
     - `date`: Current date
     - `status`: draft
     - `category`: Healthcare IT topic area
     - `tags`: Relevant keywords (list)
     - `meta-description`: 150-160 character SEO description
     - `keywords`: Target SEO keywords (list)
     - `estimated-read-time`: Based on word count (assume 250 wpm)
   - **Introduction** (150-200 words): Hook the reader with a relevant statistic, question, or industry trend. Clearly state the value the reader will get.
   - **Body Sections** (3-5 sections, each 150-250 words):
     - Use descriptive H2 headings that incorporate keywords.
     - Include data points, examples, or industry references.
     - Maintain a thought leadership tone -- informative, not salesy.
   - **Key Takeaways**: Bulleted list of 3-5 actionable insights.
   - **Call to Action**: Clear next step (e.g., contact PPC, download a resource, attend a webinar).
   - **Author Bio**: Template placeholder for author name, title, and brief background.

7. **Ensure the post** is 800-1200 words total, incorporates target keywords naturally, and uses subheadings for scannability.

8. **Write the file** to `marketing/content/blog-posts/[year]/[kebab-case-title].md` where `[year]` is the current year.

9. **Update the directory README** at `marketing/content/blog-posts/[year]/README.md` by adding the new post to the index list. If the README does not exist, create it with a header and the first entry.

10. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
    ```json
    {"skill": "new-blog-post", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "title": "<post-title>", "keywords": ["<keyword1>", "<keyword2>"]}
    ```
