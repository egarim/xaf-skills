---
name: xaf-devexpress
description: Complete DevExpress XAF (eXpressApp Framework) skill set for Hermes Agent — 18 reference skills covering XPO, EF Core, Controllers, Security, Web API, Reports, Dashboards, Office, Blazor, WinForms, Multi-tenancy, Validation, Conditional Appearance, Deployment, and Memory Leaks. Use for building, customizing, and debugging XAF applications.
---

# XAF DevExpress Skills — Hermes Agent

## Overview

This is a fork of [kashiash/xaf-skills](https://github.com/kashiash/xaf-skills) extended for **Hermes Agent** and **OpenCode**. It contains 18 focused skill files covering the full DevExpress XAF development workflow (v24.2 and v25.1).

## Installation

### Option A: Install all skills at once (recommended)

```bash
# Clone the fork
git clone https://github.com/egarim/xaf-skills.git ~/xaf-skills

# Copy all skill folders to Hermes skills directory
cp -r ~/xaf-skills/hermes/xaf-* ~/.hermes/skills/
```

### Option B: Install individual skills

```bash
# Clone the fork
git clone https://github.com/egarim/xaf-skills.git ~/xaf-skills

# Copy a single skill
cp -r ~/xaf-skills/hermes/xaf-controllers ~/.hermes/skills/
cp -r ~/xaf-skills/hermes/xaf-blazor-ui ~/.hermes/skills/
cp -r ~/xaf-skills/hermes/xaf-security ~/.hermes/skills/
```

### Option C: Use with OpenCode (one-shot)

For OpenCode, reference the SKILL.md files directly:

```bash
git clone https://github.com/egarim/xaf-skills.git ~/xaf-skills

opencode run 'Create an XAF Blazor application with EF Core' \
  -f ~/xaf-skills/hermes/xaf-blazor-ui/SKILL.md \
  -f ~/xaf-skills/hermes/xaf-ef-models/SKILL.md \
  -f ~/xaf-skills/hermes/xaf-controllers/SKILL.md
```

### Option D: Use with OpenCode (persistent)

Create symlinks to the skills:

```bash
git clone https://github.com/egarim/xaf-skills.git ~/xaf-skills

# Create symlinks in OpenCode's skills directory
ln -s ~/xaf-skills/hermes/xaf-* ~/.opencode/skills/
```

## Available Skills

| Skill | Description |
|-------|-------------|
| `xaf` | Master index — routes to the right sub-skill for any XAF topic |
| `xaf-xpo-models` | XPO persistent objects, base classes, attributes, associations, PersistentAlias |
| `xaf-ef-models` | EF Core entities, BaseObject, DbContext, IDbContextFactory, migrations |
| `xaf-controllers` | Controllers, all Action types, DialogController, chained popups, ObjectChanged/CurrentObjectChanged refresh |
| `xaf-editors` | Built-in property editors, list editors, GridListEditor/DxGridListEditor customization |
| `xaf-custom-editors` | Custom property editors (Blazor & WinForms), custom list editors, registration |
| `xaf-nonpersistent` | NonPersistent objects, ObjectsGetting, DynamicCollection, popup input forms |
| `xaf-security` | Security system, roles, permissions, OAuth2, JWT, programmatic permission checks |
| `xaf-multi-tenant` | Multi-tenancy, ITenantProvider, per-tenant DB isolation (v24.2+) |
| `xaf-web-api` | OData Web API, JWT auth, custom endpoints, $filter/$expand |
| `xaf-validation` | Validation rules, RuleCriteria, custom RuleBase, programmatic validation |
| `xaf-reports` | XtraReports v2, predefined reports, programmatic export, designer |
| `xaf-dashboards` | Dashboard module, custom storage, data sources, permissions |
| `xaf-office` | File attachments, Spreadsheet, RichText, PDF viewer |
| `xaf-blazor-ui` | Blazor Server UI, InvokeAsync thread safety, custom Razor ViewItems, JS interop |
| `xaf-winforms-ui` | WinForms UI, XtraGrid access, background workers, splash screen |
| `xaf-conditional-appearance` | [Appearance] attribute, criteria expressions, dynamic appearance from code |
| `xaf-deployment` | IIS/Azure/Docker, ClickOnce/MSI, DevExpress license, Serilog, health checks |
| `xaf-memory-leaks` | Memory leak prevention: event handler symmetry, ObjectSpace scoped disposal, batch processing, IDisposable patterns |

## Usage

After installation, invoke the skills in Hermes:

```
Use the xaf-controllers skill to create a PopupWindowShowAction that opens a selection dialog.
```

```
Use the xaf-ef-models skill to define a one-to-many relationship between Order and OrderLine.
```

```
Use the xaf-security skill to set up role-based permissions with a deny-all-by-default policy.
```

Agents supporting auto-discovery will load the relevant skill automatically based on task context.

## What This Skill Covers

Once installed, the AI agent can assist with the full XAF development workflow:

- **Data modeling** — XPO persistent objects and EF Core entities, associations, migrations, optimistic locking
- **Controllers & Actions** — SimpleAction, PopupWindowShowAction, DialogController, chaining popups, async/await in Blazor, view refresh patterns
- **UI customization** — Built-in editors, custom property editors (Blazor & WinForms), custom list editors
- **NonPersistent objects** — Custom data sources, API wrappers, input dialogs without database storage
- **Security** — Role-based access control, Standard/AD/OAuth2 authentication, programmatic permission checks, JWT
- **Multi-tenancy** — Separate database per tenant, ITenantProvider, custom resolvers (v24.2+)
- **Web API** — OData v4 endpoints, JWT auth, custom actions, `$filter`/`$expand`/`$select`
- **Validation** — All built-in rule types, custom rules, programmatic validation
- **Reports** — XtraReports setup, predefined reports, programmatic export (PDF/XLSX/DOCX)
- **Dashboards** — Dashboard analytics module, custom storage, data sources
- **Office modules** — File attachments, Spreadsheet editor, RichText editor, PDF viewer
- **Platform-specific** — Blazor thread safety (InvokeAsync), WinForms XtraGrid access, background workers
- **Conditional Appearance** — `[Appearance]` attribute, hide/disable/color UI elements by criteria
- **Deployment** — IIS/Azure/Docker, ClickOnce/MSI, DevExpress license, Serilog, health checks
- **Memory management** — Event handler symmetry, ObjectSpace scoped disposal, batch processing, IDisposable patterns

## Target Audience

- Teams building line-of-business applications with DevExpress XAF
- Developers new to XAF who need quick reference patterns
- Experienced XAF developers exploring less common features (NonPersistent, custom editors, multi-tenancy)
- Teams setting up AI-assisted code reviews and generation for XAF projects

## License

MIT — free to use, modify, and distribute.

Original work by [kashiash](https://github.com/kashiash). Extended for Hermes/OpenCode by [egarim](https://github.com/egarim).
