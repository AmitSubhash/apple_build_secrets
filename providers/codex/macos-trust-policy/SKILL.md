---
name: macos-trust-policy
description: Use for Gatekeeper, TCC, quarantine, signatures, codesign, spctl, xattr, tccutil, blocked app execution, permission prompts, and system policy debugging on macOS. Trigger when software is prevented from running, seeing, clicking, capturing, or accessing data.
---

# macOS Trust And Policy

Use this skill when the platform is blocking the workflow.

## Core Surfaces

- `codesign`
- `spctl`
- `xattr`
- `tccutil`

## Use Cases

- blocked app execution
- quarantine inspection
- signature verification
- TCC reset and permission debugging
- “why does macOS refuse to let this run?”

## Working Rules

- distinguish signatures from quarantine
- distinguish TCC from entitlement or extension issues
- inspect before mutating

## Escalate To

- `macos-ui-accessibility` for Accessibility-gated UI automation
- `macos-screen-capture` for Screen Recording-gated capture
- `macos-automation-launchd` if the failure appears during orchestration
- the knowledge bundle for deeper system extensions or package-policy work

