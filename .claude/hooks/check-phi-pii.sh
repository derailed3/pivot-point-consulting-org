#!/bin/bash
# PreToolUse hook: Scans .md file writes for PHI/PII patterns
# Exit 0 = allow, Exit 2 = block with message

input=$(cat)

# Extract file_path
file_path=$(echo "$input" | grep -o '"file_path"[[:space:]]*:[[:space:]]*"[^"]*"' | head -1 | sed 's/.*: *"//' | sed 's/"$//')

# Only check .md files
if [[ "$file_path" != *.md ]]; then
  exit 0
fi

# Check for SSN pattern (XXX-XX-XXXX) - exclude date patterns
if echo "$input" | grep -qP '[0-9]{3}-[0-9]{2}-[0-9]{4}' 2>/dev/null; then
  # Filter out date-like patterns (YYYY-MM-DD)
  if echo "$input" | grep -qP '(?<!\d)[0-9]{3}-[0-9]{2}-[0-9]{4}(?!\d)' 2>/dev/null; then
    echo "BLOCKED: Potential SSN pattern detected. PHI/PII must never be included in documents. Use [PLACEHOLDER] instead."
    exit 2
  fi
fi

# Check for MRN pattern
if echo "$input" | grep -qP 'MRN[: ]*[0-9]{6,}' 2>/dev/null; then
  echo "BLOCKED: Potential MRN (Medical Record Number) detected. PHI must never be included. Use [PLACEHOLDER] instead."
  exit 2
fi

exit 0
