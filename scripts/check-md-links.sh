#!/usr/bin/env bash
# Check that relative markdown [text](url) links resolve to existing files.
# http(s), mailto, and #-only anchors are skipped so CI stays non-flaky.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

python3 - "$ROOT" <<'PY'
import re
import sys
from pathlib import Path

root = Path(sys.argv[1]).resolve()

# [text](dest) only — skip images ![alt](dest)
LINK_RE = re.compile(r"(?<!!)\[(?:[^\]\\]|\\.)*?\]\(([^)]*)\)")

SKIP_SCHEMES = ("http://", "https://", "mailto:")


def dest_url(raw: str) -> str:
    raw = raw.strip()
    if not raw:
        return ""
    if raw.startswith("<"):
        end = raw.find(">")
        if end != -1:
            return raw[1:end].strip()
        return raw[1:].strip()
    # optional title after the URL: [t](url "title")
    return raw.split(None, 1)[0]


md_files = sorted(p for p in root.rglob("*.md") if p.is_file())
broken = []
files_checked = 0
links_checked = 0

for md in md_files:
    files_checked += 1
    text = md.read_text(encoding="utf-8")
    for match in LINK_RE.finditer(text):
        url = dest_url(match.group(1))
        if not url:
            continue
        lower = url.lower()
        if lower.startswith(SKIP_SCHEMES):
            continue
        path_part, _sep, _frag = url.partition("#")
        if path_part == "":
            # #-only anchor
            continue
        if "://" in path_part:
            continue
        if path_part.startswith("/"):
            target = (root / path_part.lstrip("/")).resolve()
        else:
            target = (md.parent / path_part).resolve()
        links_checked += 1
        if not target.exists():
            try:
                src = md.relative_to(root)
            except ValueError:
                src = md
            broken.append((src.as_posix(), url))

if broken:
    print("FAIL")
    for src, url in broken:
        print(f"- {src}: {url}")
    sys.exit(1)

print(f"OK: {files_checked} markdown files, {links_checked} relative links")
PY
