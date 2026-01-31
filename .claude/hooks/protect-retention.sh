#!/bin/bash
# PreToolUse hook: Blocks deletion of HIPAA retention-protected files
# Exit 0 = allow, Exit 2 = block with message

input=$(cat)

# Extract the command being run
command=$(echo "$input" | grep -o '"command"[[:space:]]*:[[:space:]]*"[^"]*"' | head -1 | sed 's/.*: *"//' | sed 's/"$//')

# Check if it's a delete command targeting protected directories
protected_dirs=("policies/compliance" "policies/security" "policies/data-governance")

for dir in "${protected_dirs[@]}"; do
  if echo "$command" | grep -q "$dir"; then
    echo "BLOCKED: Cannot delete files in $dir. HIPAA requires 6-year retention for compliance documents. Files can be archived to _archive/ but must never be deleted from git history."
    exit 2
  fi
done

exit 0
