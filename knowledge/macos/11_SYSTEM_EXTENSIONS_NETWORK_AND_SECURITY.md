---
title: System Extensions Network And Security
skill_id: macos.system_extensions_security
status: draft
candidate_codex_skill_name: macos-system-extensions-security
when_to_load:
  - network filtering
  - vpn integrations
  - endpoint security
  - developer mode for system extensions
---

# System Extensions Network And Security

## Mission

Use this domain when the task is deeper than normal app automation and enters the territory of network filtering, endpoint monitoring, or Apple-approved user-space extensions.

## Core Surfaces

- System Extensions
- `systemextensionsctl`
- `NetworkExtension`
- `EndpointSecurity`

## Best Use Cases

- content filtering
- VPN or tunnel integrations
- endpoint event observation and policy
- EDR and antivirus-style system monitoring

## First Commands

```bash
systemextensionsctl list
systemextensionsctl developer on
```

## Design Rules

- treat this as a developer/security-product layer, not a casual scripting layer
- assume approval, entitlement, and deployment friction
- keep user-space extension architecture clear before implementation

## Permission Gates

- extension approval
- entitlements
- developer workflows
- sometimes special testing setup

## Sideways Routes

- permission and trust debugging: [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md)
- capture or observability around extension behavior: [06 Logging Tracing And Observability](06_LOGGING_TRACING_AND_OBSERVABILITY.md)
- if the task is really user automation, fall back to [01 Automation And Launchd](01_AUTOMATION_AND_LAUNCHD.md)

## Future Skill Assets

- entitlement checklist
- extension-state inspection notes
- separation guide for `NetworkExtension` vs `EndpointSecurity`

