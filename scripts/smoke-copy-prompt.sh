#!/usr/bin/env bash
# Smoke: the skills browser copy prompt must include the SKILL.md URL.
# Usage:
#   scripts/smoke-copy-prompt.sh
#   scripts/smoke-copy-prompt.sh https://agentmindcloud.github.io/grok-bot-super/skills.html
#   scripts/smoke-copy-prompt.sh skills.html
set -euo pipefail

SRC="${1:-https://agentmindcloud.github.io/grok-bot-super/skills.html}"
TMP="$(mktemp)"
trap 'rm -f "$TMP"' EXIT

if [[ -f "$SRC" ]]; then
  cp "$SRC" "$TMP"
  LABEL="file $SRC"
else
  curl -fsSL "$SRC" > "$TMP"
  LABEL="url $SRC"
fi

python3 - "$TMP" "$LABEL" <<'PY'
import sys, re
path, label = sys.argv[1], sys.argv[2]
html = open(path, encoding="utf-8").read()
errors = []

builds_url = (
    "new URL(card.getAttribute('href')" in html
    or 'new URL(card.getAttribute("href")' in html
)
if not builds_url:
    errors.append("copy JS does not build URL from the card href")
if "${url}" not in html:
    errors.append("copy prompt template is missing ${url}")
if re.search(r"Open the \$\{skill\} skill and learn it as a reusable routine", html):
    errors.append("old URL-less copy prompt is still present")

hrefs = re.findall(r'<a class="card" href="([^"]+)"', html)
if not hrefs:
    errors.append("no skill cards found")
for h in hrefs:
    if not h.endswith("SKILL.md"):
        errors.append(f"card href is not a SKILL.md: {h}")

if errors:
    print(f"FAIL ({label})")
    for e in errors:
        print(f"- {e}")
    sys.exit(1)
print(f"OK ({label}): {len(hrefs)} cards, copy prompt includes SKILL.md URL")
PY
