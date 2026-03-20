# macOS Trust And Policy

## Description

Use this skill for Gatekeeper, TCC, quarantine, signatures, codesign, spctl, xattr, tccutil, blocked app execution, permission prompts, and system policy debugging on macOS.

## Trigger Conditions

Activate this skill when software is prevented from running, seeing, clicking, capturing, or accessing data.

## Instructions

Core surfaces:

- `codesign`
- `spctl`
- `xattr`
- `tccutil`

Working rules:

- distinguish signatures from quarantine
- distinguish TCC from entitlement or extension issues
- inspect before mutating

Escalate to:

- `macos-ui-accessibility` for Accessibility-gated UI automation
- `macos-screen-capture` for Screen Recording-gated capture
- `macos-automation-launchd` if the failure appears during orchestration

