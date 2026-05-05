# XAF DevExpress Skills — Hermes/OpenCode Edition

This is a fork of [kashiash/xaf-skills](https://github.com/kashiash/xaf-skills) extended for **Hermes Agent** and **OpenCode**.

## Quick Install

```bash
# Install all 19 skills
bash <(curl -fsSL https://raw.githubusercontent.com/egarim/xaf-skills/main/hermes/install-hermes-skills.sh)
```

## What's Different from the Original

The original repo is designed for Claude Code, Cursor, Windsurf, and the `skills.sh` ecosystem. This fork adds:

- **`hermes/`** — All 19 SKILL.md files copied here for easy installation to `~/.hermes/skills/`
- **`hermes/install-hermes-skills.sh`** — One-command installer for Hermes
- **`hermes/SKILL.md`** — Master index with Hermes/OpenCode installation instructions
- **`opencode/`** — OpenCode-specific launcher and usage guide
- **`agents/`** — Generic launcher scripts for other agent platforms

## Installation

### Hermes Agent

```bash
# Option 1: Install script
bash <(curl -fsSL https://raw.githubusercontent.com/egarim/xaf-skills/main/hermes/install-hermes-skills.sh)

# Option 2: Manual
git clone https://github.com/egarim/xaf-skills.git ~/xaf-skills
cp -r ~/xaf-skills/hermes/xaf-* ~/.hermes/skills/
```

### OpenCode

```bash
# Option 1: One-shot with file references
git clone https://github.com/egarim/xaf-skills.git ~/xaf-skills
opencode run 'Create XAF app' \
  -f ~/xaf-skills/hermes/xaf-blazor-ui/SKILL.md \
  -f ~/xaf-skills/hermes/xaf-ef-models/SKILL.md

# Option 2: Persistent symlinks
ln -s ~/xaf-skills/hermes/xaf-* ~/.opencode/skills/
```

### Other Agents (Claude Code, Cursor, etc.)

For Claude Code and other agents, use the original [kashiash/xaf-skills](https://github.com/kashiash/xaf-skills) repo which has proper `skills.sh` and marketplace support.

## Available Skills (19 total)

| Skill | Description |
|-------|-------------|
| `xaf` | Master index |
| `xaf-xpo-models` | XPO persistent objects |
| `xaf-ef-models` | EF Core entities |
| `xaf-controllers` | Controllers & Actions |
| `xaf-editors` | Built-in property editors |
| `xaf-custom-editors` | Custom property editors |
| `xaf-nonpersistent` | NonPersistent objects |
| `xaf-security` | Security system |
| `xaf-multi-tenant` | Multi-tenancy |
| `xaf-web-api` | OData Web API |
| `xaf-validation` | Validation rules |
| `xaf-reports` | XtraReports |
| `xaf-dashboards` | Dashboard module |
| `xaf-office` | Office modules |
| `xaf-blazor-ui` | Blazor Server UI |
| `xaf-winforms-ui` | WinForms UI |
| `xaf-conditional-appearance` | [Appearance] attribute |
| `xaf-deployment` | Deployment guide |
| `xaf-memory-leaks` | Memory leak prevention |

## License

MIT — based on the original MIT-licensed work by [kashiash](https://github.com/kashiash).
