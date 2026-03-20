---
name: apple-build-secrets-router
description: Use when a macOS request needs routing to the right capability domain before implementation. This skill maps tasks to the correct Apple Build Secrets domain: automation, UI accessibility, screen capture, observability, or trust and permissions.
---

# Apple Build Secrets Router

Use this skill first when the user has a broad macOS platform question and the main problem is choosing the right surface.

## Route By Intent

- recurring automation, agents, scheduled workflows:
  use `macos-automation-launchd`
- app UI inspection or control:
  use `macos-ui-accessibility`
- screenshots, window capture, or screen recording:
  use `macos-screen-capture`
- tracing weird behavior, background services, or system evidence:
  use `macos-observability`
- Gatekeeper, TCC, quarantine, signatures, or permissions:
  use `macos-trust-policy`

## Working Rules

- Prefer public Apple APIs and Apple-shipped tools first.
- Treat TCC and system policy as first-class constraints.
- Load only one primary domain skill unless the first one explicitly requires a second.

