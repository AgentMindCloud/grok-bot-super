# Meeting Notes → Action Items

Converts raw meeting notes or transcript into clear owners, deadlines, and next steps.

## When to use

User pastes meeting notes, transcript, or voice memo summary.

## Required inputs and access

**Inputs (required)**
- The meeting notes or transcript to extract from.
- Optional: attendees, the meeting date, and whether to propose calendar holds.

**Access**
- None if the notes are pasted.
- Calendar only if scheduling is requested. Do not create or change events without a fresh approval.

If the notes are too thin to extract actions, ask for them. Do not invent owners or dates.

## Steps

1. Read the full notes.
2. Identify decisions made and open questions.
3. Extract every action item with:
   - What needs to be done
   - Who owns it (if mentioned)
   - Deadline or timeframe (if mentioned)
4. Group by owner or priority.
5. Flag anything still ambiguous.
6. Output a clean action list the team can actually use.

## How to validate

- Every action has what to do, plus owner **or** “unassigned”, plus due **or** “unspecified”.
- No owners or dates were invented.
- Ambiguities sit under Open Questions, not Action Items.

## Always ask for approval when

- Assigning work to other people
- Creating calendar events
- Sending the summary to the group

## Expected output

**Decisions**
- ...

**Action Items**
- [Owner] Task – due date
- ...

**Open Questions**
- ...
