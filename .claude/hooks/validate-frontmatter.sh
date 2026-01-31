#!/bin/bash
# PreToolUse hook: Validates that .md file writes include YAML frontmatter
# Exit 0 = allow, Exit 2 = block with message

# Read tool input from stdin
input=$(cat)

# Extract file_path from JSON input
file_path=$(echo "$input" | grep -o '"file_path"[[:space:]]*:[[:space:]]*"[^"]*"' | head -1 | sed 's/.*: *"//' | sed 's/"$//')

# Only check .md files
if [[ "$file_path" != *.md ]]; then
  exit 0
fi

# Extract content from JSON input
content=$(echo "$input" | grep -o '"content"[[:space:]]*:[[:space:]]*"' | head -1)

# Check if content starts with YAML frontmatter delimiter
if echo "$input" | grep -q '"content".*"---'; then
  exit 0
fi

echo "BLOCKED: Markdown files must start with YAML frontmatter (---). See CLAUDE.md for required fields."
exit 2
