# Weekly Review

Turns a week of notes, calendar, and open loops into a clear weekly review + next-week priorities.

## When to use

End of week, or when the user feels scattered and wants clarity.

## Required inputs and access

**Inputs (required)**
- A week of raw material, enough to review: notes, wins, finished work, open loops, unfinished commitments, pending decisions.
- Which week (default: the week just ending).
- Optional: calendar events, task list, or a “do not drop” list.

Pasted notes are enough. Do not invent a week the user did not provide.

**Access**
- None if the user pastes the material.
- Calendar or notes apps only if the Bot should collect them. Read-only. No event or message changes without a fresh approval.

If the material is too thin to review, ask for notes or a calendar dump instead of padding the review.

## Steps

1. Collect what happened this week (wins, finished work, open loops).
2. Surface unfinished commitments and decisions still pending.
3. Identify the 3 highest-leverage priorities for next week.
4. Suggest what to drop, defer, or delegate.
5. Output a short, motivating review the user can actually act on.

## How to validate

- Next Week Focus has at most 3 items.
- Open loops from the input appear under Still open or Drop / Defer.
- No calendar events or messages were changed.

## Always ask for approval when

- Changing calendar events
- Messaging other people about commitments

## Expected output

**This Week**
- Wins
- What moved forward
- Still open

**Next Week Focus (max 3)**
1. ...
2. ...
3. ...

**Drop / Defer**
- ...
