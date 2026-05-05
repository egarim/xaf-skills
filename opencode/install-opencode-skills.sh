#!/usr/bin/env bash
# Install XAF DevExpress skills for OpenCode
# Usage: bash install-opencode-skills.sh
#
# Clones the xaf-skills fork and creates symlinks for OpenCode

set -euo pipefail

SKILLS_REPO="https://github.com/egarim/xaf-skills.git"
CLONE_DIR="${TMPDIR:-/tmp}/xaf-skills-install"
OPCODE_SKILLS="$HOME/.opencode/skills"

echo "Installing XAF DevExpress skills for OpenCode..."

# Clone the repo (if not already cloned)
if [ ! -d "$CLONE_DIR/.git" ]; then
    echo "Cloning $SKILLS_REPO ..."
    git clone "$SKILLS_REPO" "$CLONE_DIR"
else
    echo "Repo already cloned, updating..."
    cd "$CLONE_DIR"
    git pull
fi

# Create OpenCode skills directory
mkdir -p "$OPCODE_SKILLS"

# Create symlinks for all xaf-* skill folders
for skill_dir in "$CLONE_DIR/opencode/xaf-"*; do
    skill_name=$(basename "$skill_dir")
    link="$OPCODE_SKILLS/$skill_name"
    
    if [ -e "$link" ]; then
        echo "  Updating symlink: $skill_name"
        rm "$link"
    fi
    ln -s "$skill_dir" "$link"
    echo "  Linked: $skill_name -> $skill_dir"
done

# Clean up
rm -rf "$CLONE_DIR"

echo ""
echo "Done! Linked $(ls -d "$OPCODE_SKILLS/xaf-"* 2>/dev/null | wc -l) skills to $OPCODE_SKILLS"
echo ""
echo "Available skills:"
ls -1 "$OPCODE_SKILLS/xaf-"* 2>/dev/null | while read link; do
    name=$(basename "$link")
    target=$(readlink -f "$link")
    desc=$(head -3 "$target/SKILL.md" | grep "^description:" | sed 's/description: //')
    echo "  $name — $desc"
done
