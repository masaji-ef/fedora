#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

clear
echo ""
echo -e "${BOLD}${CYAN}╔═══════════════════════════════════════════════════════════╗${NC}"
echo -e "${BOLD}${CYAN}║                                                           ║${NC}"
echo -e "${BOLD}${CYAN}║   🔗  DOTFILES INSTALLER                                 ║${NC}"
echo -e "${BOLD}${CYAN}║                                                           ║${NC}"
echo -e "${BOLD}${CYAN}╚═══════════════════════════════════════════════════════════╝${NC}"
echo ""

if [[ ! -d .config ]]; then
    echo -e "${RED}❌ Please run this script from the root of the dotfiles repository.${NC}"
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
BACKUP_DIR="$HOME/dotfiles_backup_$(date +%Y%m%d_%H%M%S)"

echo -e "${BLUE}📦 Creating backup in: $BACKUP_DIR${NC}"
mkdir -p "$BACKUP_DIR"

echo -e "${BLUE}🔗 Creating symlinks for .config...${NC}"
echo ""

mkdir -p ~/.config

for dir in "$SCRIPT_DIR/.config"/*; do
    if [[ -d "$dir" ]]; then
        name=$(basename "$dir")
        target="$HOME/.config/$name"
        
        if [[ -e "$target" ]]; then
            echo -e "   ${YELLOW}⚠️${NC} Backing up: $target"
            if [[ -L "$target" ]]; then
                cp -r "$target" "$BACKUP_DIR/${name}_symlink" 2>/dev/null || true
            else
                mv "$target" "$BACKUP_DIR/$name"
            fi
        fi
        
        ln -sf "$dir" "$target"
        echo -e "   ${GREEN}✅${NC} ~/.config/$name -> $dir"
    fi
done

echo ""
echo -e "${BOLD}${GREEN}╔═══════════════════════════════════════════════════════════╗${NC}"
echo -e "${BOLD}${GREEN}║                     ✅ DONE!                            ║${NC}"
echo -e "${BOLD}${GREEN}╚═══════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${YELLOW}📌${NC} ${BOLD}Backup saved to:${NC} $BACKUP_DIR"
echo ""
echo -e "${YELLOW}📌${NC} ${BOLD}Installed configs:${NC}"
for dir in "$SCRIPT_DIR/.config"/*; do
    if [[ -d "$dir" ]]; then
        echo -e "   ${CYAN}•${NC} $(basename "$dir")"
    fi
done
echo ""
echo -e "${YELLOW}📌${NC} ${BOLD}To apply changes:${NC}"
echo -e "   Restart your applications or reload configs"
echo ""
echo -e "${BOLD}${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
