---
name: commit
description: Create a commit following project guidelines
---

Create a git commit following these rules exactly:

## Title Rules
- Limit to 50 characters - be as specific and terse as possible
- Begin with imperative action: "Add", "Fix", "Refactor", etc.
- Sentence case for an incremental change or fix (common)
- Title case for a big feature (rare)

## Description Rules
- Use verbose, Markdown-formatted descriptions including any relevant info for future reference (complete error messages, links to issues, references to related commits, alternative approaches discarded, etc.)
- Avoid hard wrapping lines, prefer line wrapping
- Do not credit AI assistants or their vendors as co-authors

## Process
1. Run `git status` and `git diff` to see what's staged
2. Run `git log --oneline -5` to see recent commit message style
3. Draft a commit message following the rules above
4. **Validate title length**: Run `echo -n "YOUR TITLE" | wc -c` to verify ≤50 characters before committing
5. Create the commit using a HEREDOC for proper formatting

If arguments are provided, use them as context for the commit: $ARGUMENTS
