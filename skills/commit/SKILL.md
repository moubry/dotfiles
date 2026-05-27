---
name: commit
description: Create a commit following project guidelines
---

Create a git commit following these rules exactly:

## Title Rules
1. Limit to 50 characters - be as specific and terse as possible
2. Begin with imperative action: "Add", "Fix", "Refactor", etc.
3. Sentence case for an incremental change or fix (common)
4. Title case for a big feature (rare)

## Description Rules
1. Use verbose, Markdown-formatted descriptions including any relevant info for future reference (complete error messages, links to issues, references to related commits, alternative approaches discarded, rationale for decisions, etc.)
2. The description/body of the commit message should be like a Markdown document, not like a `man` page, so avoid hard-wrapping lines with line-breaks, and instead prefer soft line wrapping (uninterrupted strings that wrap), because it makes the copy more portable (easy to copy/paste elsewhere without having to remove a bunch of line breaks), such as GitHub pull requests
3. Clearly state the problem, the solution, design decisions (explain why), etc. Anticipate the questions people will ask when they look at this commit again in the future
4. Do not credit AI assistants or their vendors as co-authors

## Process
1. Run `git status` and `git diff` to see what's staged
2. Run `git log --oneline -5` to see recent commit message style
3. Draft a commit message following the rules above
4. **Validate title length**: Run `echo -n "YOUR TITLE" | wc -c` to verify ≤50 characters before committing
5. Only stage the specific files -- and specific lines in those files -- related to the current session, because there are likely other AI agents editing files in this project too right now, and we only want to commit the stuff from this session
6. Create the commit using a HEREDOC for proper formatting

If arguments are provided, use them as context for the commit: $ARGUMENTS
