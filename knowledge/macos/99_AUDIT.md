---
title: macOS Skill Library Audit
library_id: macos-skill-library
status: first_pass_review
---

# macOS Skill Library Audit

## What Is Good In This First Cut

- The directory is routable.
  - `00_INDEX.md` gives a clear event-to-domain map instead of a flat pile of notes.
- Each domain is scoped.
  - the files are separated by capability family rather than by random commands.
- The structure is skill-friendly.
  - each file already has a `skill_id`, trigger-style metadata, and a candidate Codex skill name.
- Permissions are explicit.
  - the library does not pretend Mac capabilities are available without TCC, trust, or approval state.
- Cross-loading is controlled.
  - each domain points sideways only where the dependency is real.

## Main Weaknesses

- These are not live Codex skills yet.
  - there is no `SKILL.md` per top-level skill folder, so Codex cannot auto-trigger them today.
- There is no script layer yet.
  - the library explains what to do, but it does not bundle validators, templates, or helper scripts.
- Trigger language is still broad.
  - several domains will need tighter descriptions before becoming real skills.
- There is no machine-readable loader yet.
  - the index is a human/agent router, not an automated resolver.
- There are no examples or tests yet.
  - the next iteration should prove that a user can start from an event and land in the right domain doc consistently.

## Highest-Value Improvements

1. Convert the top five domains into actual Codex skills:
   automation, UI/accessibility, trust/policy, observability, screen capture.
2. Add helper assets:
   launchd plist templates, permission checklists, log predicates, package receipt scripts.
3. Add a small machine-readable manifest:
   one JSON or YAML file that maps event keywords to domain docs.
4. Add example prompts:
   one to three real “when to use this” examples per domain.
5. Split trust/policy into two levels if needed:
   a user-facing diagnosis layer and a deeper signing/entitlement layer.

## Suggested Conversion Order

1. `01_AUTOMATION_AND_LAUNCHD.md`
2. `07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md`
3. `02_UI_CONTROL_AND_ACCESSIBILITY.md`
4. `06_LOGGING_TRACING_AND_OBSERVABILITY.md`
5. `04_SCREEN_CAPTURE_AND_VISUAL_WORKFLOWS.md`

These have the clearest triggers and the highest day-to-day leverage.

## Recommended Next Step

Keep this directory as the knowledge draft, then create a sibling live skill pack later, for example:

```text
.codex/skills/
  macos-automation-launchd/
  macos-ui-accessibility/
  macos-trust-policy/
  macos-observability/
  macos-screen-capture/
```

Each live skill should pull only the narrow, triggerable instructions from this directory and keep the deeper reference material here or in skill-local `references/`.

