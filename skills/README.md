# Skills Library

Browse and contribute playbooks that a Grok Bot can *read*. Saving is a Grok Bot action, not this repo.

A **skill** is how to do a task. A **routine** is when one Bot runs it — only after the skill is saved and tested.

## Current Skills

| Skill | Description |
|-------|-------------|
| [email-triage](./email-triage/SKILL.md) | Prioritize inbox + draft replies |
| [follow-up-drafter](./follow-up-drafter/SKILL.md) | Natural high-signal follow-ups after meetings or silence |
| [research-brief](./research-brief/SKILL.md) | Research question → tight source-backed brief |
| [meeting-to-actions](./meeting-to-actions/SKILL.md) | Notes/transcript → clear owners & action items |
| [x-thread-builder](./x-thread-builder/SKILL.md) | Idea or long text → high-signal X thread |
| [daily-standup-summary](./daily-standup-summary/SKILL.md) | Clean professional standup from raw notes |
| [weekly-review](./weekly-review/SKILL.md) | Week of notes → clarity + next-week priorities |
| [account-health-watch-list](./account-health-watch-list/SKILL.md) | Portfolio → ranked risk/expansion watch list |

## How a Bot uses a playbook

Point the Bot at the `SKILL.md` URL, run it once on a safe example, then save it as a Grok Bot **skill** (Settings → Plugins, or “Save the process we just used as a skill called …”). Do not create a routine until that skill is saved and tested.

Example:

> Read this playbook and run it once on a safe example (do not send, post, or delete). Then save it as a skill — not a routine — called “Email Triage”:
> https://agentmindcloud.github.io/grok-bot-super/skills/email-triage/SKILL.md
