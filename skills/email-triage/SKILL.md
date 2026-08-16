# Email Triage & Reply Drafts

Turns a messy inbox or pasted emails into prioritized actions + ready-to-send reply drafts.

## When to use

User pastes one or more emails, or asks the Bot to process recent inbox messages.

## Required access

- Gmail / Outlook / email connector (or user pastes the emails)

## Steps

1. Read every email carefully.
2. Categorize each as: Action needed / FYI / Waiting / Archive.
3. For Action needed: extract the exact ask, deadline, and key context.
4. Draft a short, professional reply in the user’s voice (or neutral if unknown).
5. Flag anything that needs human judgment or sensitive content.
6. Output a clean prioritized list + drafts.

## How to validate

- Every pasted/fetched email appears in a category. None dropped.
- Every Action needed item has a draft **or** an explicit “needs human” flag.
- No email was sent, archived, or deleted.
- If inbox access failed, say so and work only from pasted text.

## Always ask for approval when

- Sending any email
- Archiving or deleting messages
- Handling money, legal, or personal sensitive topics

## Expected output

**Priority Actions**
- [High] From X – summary → Draft reply
- [Medium] ...

**Draft Replies**
(ready to copy or send after approval)
