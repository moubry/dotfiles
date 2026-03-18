---
name: diff
description: Show a readable summary of the current git diff with suggested commits
---

Present a concise, structured overview of the current working tree changes.

## Process

1. Run `git status --short` and `git diff` (unstaged) and `git diff --cached` (staged) in parallel
2. Run `git log --oneline -5` for recent commit style context
3. Output the report in the exact format below — nothing else

## Output Format

Use this exact structure. Be terse. No filler, no preamble, no sign-off.

```
## Status

<list each changed file on one line with a colored status prefix>
  🟢 added: path/to/new-file.ts
  🔵 modified: path/to/changed-file.ts
  🔴 deleted: path/to/removed-file.ts
  🟡 renamed: old-name.ts → new-name.ts

## Changes

<For each file, a **bold filename** header, then a terse 1-2 line plain-english summary of what changed. No code blocks unless a specific line is critical context. Group related files under a single header if the change is cohesive.>

## Suggested Commits

<Numbered list of commits that would make a clean history. Each entry is a single line in imperative mood, ≤50 chars, with the files it covers in parentheses. Order them logically (dependencies first). If everything belongs in one commit, suggest one.>

1. Add user auth middleware (src/auth.ts, src/middleware/)
2. Fix login redirect bug (src/routes/login.ts)
```

## Rules
- If there are no changes, just say "Working tree clean." and stop
- Never explain git concepts or add commentary outside the format
- Keep file summaries to 1-2 lines max — focus on *what* changed, not *how*
- Staged vs unstaged: if both exist, show a `### Staged` / `### Unstaged` split under Status and Changes
- Commit suggestions should follow the style of recent `git log` output
