# Daily Standup Summary

Turns a messy list of updates into a clean, professional daily standup summary.

## When to use

User pastes raw notes, Slack messages, or bullet points about what they did yesterday, today, and blockers.

## Required inputs and access

**Inputs (required)**
- Raw standup notes for this cycle: what was done, what's next, and any blockers (paste is enough).
- Optional: the channel or audience (Slack / Teams / Notion) and the user's voice.

**Access**
- None if the notes are pasted.
- Slack / Teams / notes only if the Bot should collect them. Read-only. Do not post the summary without a fresh approval.

If the notes are too thin to summarize, ask for them. Do not invent work.

## Steps

1. Read the raw input carefully.
2. Extract three sections: Yesterday, Today, Blockers.
3. Rewrite each point to be clear, concise, and professional.
4. Keep the original meaning — do not invent work.
5. Format as clean Markdown ready to paste into Slack/Teams/Notion.

## How to validate

- Output has only Yesterday / Today / Blockers.
- No work was invented. Original meaning is preserved.
- The summary was not posted to a channel.

## Always ask for approval when

- The summary will be posted publicly or to a team channel (ask first).

## Expected output

```
**Yesterday**
- ...

**Today**
- ...

**Blockers**
- ...
```
