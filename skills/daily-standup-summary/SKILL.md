# Daily Standup Summary

Turns a messy list of updates into a clean, professional daily standup summary.

## When to use

User pastes raw notes, Slack messages, or bullet points about what they did yesterday, today, and blockers.

## Required access

None. Pure text processing.

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
