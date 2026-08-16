<p align="center">
  <img src="assets/logo.svg" alt="Grok Bot Super" width="140" />
</p>

<h1 align="center">Grok Bot Super</h1>

<p align="center">
  <strong>A community playbook library a Grok Bot can <em>read</em></strong><br>
  Saving is a Grok Bot action, not this website.
</p>

<p align="center">
  <a href="https://agentmindcloud.github.io/grok-bot-super/">
    <img src="https://img.shields.io/badge/Live_Site-Visit_Now-22d3ee?style=for-the-badge&logo=github" alt="Live Site" />
  </a>
  &nbsp;
  <img src="https://img.shields.io/badge/Status-Public_Beta-a78bfa?style=for-the-badge" alt="Status" />
  &nbsp;
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License" />
</p>

---

### Why this exists

Grok Bot is already powerful.
**Grok Bot Super** is a set of playbooks the Bot can read — without any technical setup.

No MCP. No Docker. No tunnels. No YAML.
This site does not install skills. Visiting a URL is not a save path.

---

### How to use a playbook (about a minute)

1. Open the live site → [agentmindcloud.github.io/grok-bot-super](https://agentmindcloud.github.io/grok-bot-super/)
2. Open a skill’s `SKILL.md` (or copy its URL from the [skills browser](https://agentmindcloud.github.io/grok-bot-super/skills.html))
3. Message your Grok Bot with the playbook URL, for example:

```text
Read this playbook and run it once on a safe example (do not send, post, or delete). Then save it as a skill — not a routine — called “Follow-up Drafter”:
https://agentmindcloud.github.io/grok-bot-super/skills/follow-up-drafter/SKILL.md
```

4. After one good run, ask: “Save the process we just used as a skill called ‘<Name>’. Include when to use it, inputs, steps, how to validate, expected output, and approval boundaries.”
5. Confirm it appears under `/` or **Settings → Plugins → Yours**.
6. Only then create a **routine** if it should run on a schedule.

Official save paths (from [Grok Bot docs](https://docs.x.ai/grok-bot/skills-routines-and-automations)): save-as-skill after a real task, Settings → Plugins, or Teach a task / a written draft. A **skill** is how. A **routine** is when / which Bot.

---

### Current Skills (real value)

| Skill | What it does |
|-------|--------------|
| [Email Triage](skills/email-triage/SKILL.md) | Prioritize inbox + draft ready-to-send replies |
| [Follow-up Drafter](skills/follow-up-drafter/SKILL.md) | Natural high-signal follow-ups after meetings or silence |
| [Research Brief](skills/research-brief/SKILL.md) | Research question → tight, source-backed brief |
| [Meeting → Actions](skills/meeting-to-actions/SKILL.md) | Notes or transcript → clear owners & deadlines |
| [X Thread Builder](skills/x-thread-builder/SKILL.md) | Idea or long text → high-signal ready-to-post thread |
| [Daily Standup Summary](skills/daily-standup-summary/SKILL.md) | Raw notes → clean professional standup |
| [Weekly Review](skills/weekly-review/SKILL.md) | Week of notes → clarity + next-week priorities |
| [Account Health Watch List](skills/account-health-watch-list/SKILL.md) | Portfolio → ranked risk/expansion watch list |

---

### For contributors

Skills are simple Markdown playbooks.
See [`CONTRIBUTING.md`](CONTRIBUTING.md) and the template in `skills/_template/`.

Good skills are practical, clear, and safe. Prefer step-by-step instructions a Bot can actually follow. The Bot must save them through official Grok Bot paths — this repo does not install skills.

---

### Roadmap

- [x] Beautiful landing page
- [x] Core skill library (8 skills)
- [x] Zero-friction onboarding flow
- [x] Skill browser page
- [x] Tiny demo section (how the Bot learns a skill)
- [ ] Simple shared memory board
- [ ] Bot skins / personality packs
- [x] Community skill submissions via PR

---

<p align="center">
  Built for the Grok / SpaceXAI community by <a href="https://github.com/AgentMindCloud">AgentMindCloud</a><br>
  MIT License · Free forever core
</p>
