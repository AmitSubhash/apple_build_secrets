---
title: Trust Permissions And System Policy
skill_id: macos.trust_and_policy
status: draft
candidate_codex_skill_name: macos-trust-policy
when_to_load:
  - blocked apps
  - quarantine
  - gatekeeper
  - tcc prompts
  - permissions debugging
---

# Trust Permissions And System Policy

## Mission

Use this domain when the Mac refuses to let software run, see, click, capture, or inspect something.

## Core Surfaces

- `codesign`
- `spctl`
- `xattr`
- `tccutil`

## Best Use Cases

- inspect a binary or app’s signature
- see whether Gatekeeper is blocking execution
- inspect or clear quarantine metadata
- reset TCC decisions so a prompt reappears
- explain why an automation or capture workflow is failing

## First Commands

```bash
codesign -d --verbose=4 /Applications/Safari.app
spctl --assess -v /Applications/Safari.app
xattr -l ~/Downloads/example.dmg
tccutil reset All com.apple.Terminal
```

## Design Rules

- distinguish signature problems from quarantine problems
- distinguish TCC problems from entitlement or system-extension problems
- prefer inspection before mutation

## Permission Gates

- this domain is about the gates themselves:
  Accessibility, Automation, Screen Recording, Full Disk Access, Input Monitoring, and extension approval

## Sideways Routes

- UI automation blocked by Accessibility: [02 UI Control And Accessibility](02_UI_CONTROL_AND_ACCESSIBILITY.md)
- synthetic input blocked by Input Monitoring: [03 Input Events And Synthetic Input](03_INPUT_EVENTS_AND_SYNTHETIC_INPUT.md)
- screen capture blocked by Screen Recording: [04 Screen Capture And Visual Workflows](04_SCREEN_CAPTURE_AND_VISUAL_WORKFLOWS.md)
- extension or entitlement issues: [11 System Extensions Network And Security](11_SYSTEM_EXTENSIONS_NETWORK_AND_SECURITY.md)

## Future Skill Assets

- a permission diagnosis matrix
- a quarantine inspection script
- a TCC reset helper with service-name lookup

