#!/usr/bin/env bash
# Install XAF DevExpress skills for Hermes Agent
# Usage: bash install-hermes-skills.sh
#
# Clones the xaf-skills fork and copies all skills to ~/.hermes/skills/

set -euo pipefail

SKILLS_REPO="https://github.com/egarim/xaf-skills.git"
CLONE_DIR="${TMPDIR:-/tmp}/xaf-skills-install"
HERMES_SKILLS="$HOME/.hermes/skills"

echo "Installing XAF DevExpress skills for Hermes Agent..."

# Clone the repo (if not already cloned)
if [ ! -d "$CLONE_DIR/.git" ]; then
    echo "Cloning $SKILLS_REPO ..."
    git clone "$SKILLS_REPO" "$CLONE_DIR"
else
    echo "Repo already cloned, updating..."
    cd "$CLONE_DIR"
    git pull
fi

# Create Hermes skills directory
mkdir -p "$HERMES_SKILLS"

# Copy all xaf-* skill folders
cp -r "$CLONE_DIR/hermes/xaf-"* "$HERMES_SKILLS/"

# Clean up
rm -rf "$CLONE_DIR"

echo "Done! Installed $(ls -d "$HERMES_SKILLS/xaf-"* 2>/dev/null | wc -l) skills to $HERMES_SKILLS"
echo ""
echo "Available skills:"
ls -1 "$HERMES_SKILLS/xaf-"* 2>/dev/null | while read dir; do
    name=$(basename "$dir")
    desc=$(head -3 "$dir/SKILL.md" | grep "^description:" | sed 's/description: //')
    echo "  $name — $desc"
done
