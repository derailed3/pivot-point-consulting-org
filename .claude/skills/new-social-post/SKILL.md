---
name: "new-social-post"
description: "Generates platform-specific social media content for LinkedIn or Twitter. Use when the user asks to create a social media post, LinkedIn post, or tweet. Includes hashtags and CTAs."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Social Media Post

Generate platform-specific social media content for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the social post template** from `templates/social-post-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Platform**: `LinkedIn` or `Twitter`.
   - **Topic or content source**: What the post is about (e.g., blog promotion, event, thought leadership, company news).
   - **Key message**: The core point to communicate.
   - **Link**: URL to include, if any.

5. **Check for duplicates** by scanning `marketing/content/social-media/[platform]-posts/` for recent posts on the same topic. Alert the user if a similar post exists.

6. **Generate the social media post** with the following structure:
   - **Frontmatter** (YAML):
     - `platform`: LinkedIn or Twitter
     - `topic`: Post topic
     - `status`: draft
     - `date`: Current date
     - `author`: [PLACEHOLDER]
     - `campaign`: [PLACEHOLDER - if part of a campaign]
     - `linked-content`: Path or URL to related content
   - **Post Content** formatted per platform:
     - **LinkedIn** (up to 3000 characters):
       - Opening hook (first 2 lines are critical -- they appear before "see more").
       - 2-4 paragraphs of value-driven content.
       - Line breaks for readability.
       - 3-5 relevant hashtags at the end.
       - Clear CTA (comment, share, visit link).
     - **Twitter** (280 characters max):
       - Concise, punchy message.
       - 1-2 relevant hashtags (included in character count).
       - Shortened link if applicable.
       - CTA or engagement prompt.
   - **Hashtag Suggestions**: 5-8 relevant hashtags for the topic (user can pick from these).
   - **Engagement Notes**: Suggested replies or follow-up engagement strategy.

7. **Write the file** to `marketing/content/social-media/[platform]-posts/[year]/[kebab-case-topic]-[date].md` where `[year]` is the current year and `[date]` is in YYYY-MM-DD format.

8. **Update the directory README** at `marketing/content/social-media/[platform]-posts/[year]/README.md` by adding the new post to the index list. If the README does not exist, create it with a header and the first entry.

9. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
   ```json
   {"skill": "new-social-post", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "platform": "<platform>", "topic": "<topic>"}
   ```
