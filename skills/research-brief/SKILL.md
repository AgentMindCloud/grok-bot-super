# Research → Clean Brief

Turns a research question into a tight, source-backed brief ready for decisions or sharing.

## When to use

User asks for research on a topic, competitor, market, person, or technology.

## Required inputs and access

**Inputs (required)**
- The exact question to answer.
- Desired depth (quick / standard / deep). Default: standard.
- Optional: must-include sources, must-avoid sources, or a date cutoff.

**Access**
- Web browsing / search (Grok Bot has this natively).
- No paid databases or private docs unless the user provides them or a working connector.

If the question is too vague to research, ask one clarifying question first.

## Steps

1. Clarify the exact question and desired depth (quick / standard / deep).
2. Search and open the highest-signal sources.
3. Extract only facts that directly answer the question.
4. Note conflicting information and confidence level.
5. Structure the output as:
   - Executive summary (3–5 lines)
   - Key findings (bullets)
   - Risks / unknowns
   - Sources (with links)
6. Keep the brief under one page unless deep mode is requested.

## How to validate

- Every key finding has a source link.
- Conflicts and confidence are stated.
- Length stays under one page unless deep mode was requested.
- If sources are missing, stale, or contradictory, say so and lower confidence.

## Always ask for approval when

- Publishing or sending the brief externally
- Using paywalled or private data

## Expected output

Clean Markdown brief with clear sections and links.
