# Contributing to Grok Bot Super

Thank you for helping make Grok Bot more useful.

`SKILL.md` is a playbook. The Bot must save it via official Grok Bot paths (save-as-skill after a real task, Settings → Plugins, or Teach a task / a written draft). This repo does not install skills. Visiting a URL is not a save path.

A **skill** is how. A **routine** is when / which Bot — only after a saved skill works.

## How to add a Skill

1. Create a new folder under `/skills/your-skill-name`
2. Add a `SKILL.md` file following the template in `/skills/_template/SKILL.md` (include **How to validate**)
3. Keep the skill self-contained and easy for a Grok Bot to follow by reading.
4. Open a PR.

Skills should be practical, clear, and safe. Prefer step-by-step instructions the Bot can follow.

## Skill Guidelines

- Clear title and short description
- When to use it
- Required inputs and access
- Exact steps or decision rules
- How to validate the result
- What the Bot should return
- Approval boundaries (what always needs human confirmation)

## Code of Conduct

Be kind. This is a free community project for the Grok ecosystem.

## Copy-prompt smoke

After changing `skills.html`, run `scripts/smoke-copy-prompt.sh` (live Pages) or `scripts/smoke-copy-prompt.sh skills.html` (local). It fails if Copy prompt no longer includes the card’s `SKILL.md` URL.

## Docs CI

PRs run `.github/workflows/docs.yml`: relative markdown links must resolve, and `scripts/smoke-copy-prompt.sh skills.html` must pass. Locally: `scripts/check-md-links.sh` then `scripts/smoke-copy-prompt.sh skills.html`.
