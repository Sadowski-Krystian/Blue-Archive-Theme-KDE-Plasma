#!/bin/bash

# --- Colors and Styles ---
BLUE='\033[0;34m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# --- Welcome Banner ---
echo -e "${CYAN}${BOLD}====================================================${NC}"
echo -e "${CYAN}${BOLD}  Welcome to the Blue Archive Shittim Chest Setup!  ${NC}"
echo -e "${CYAN}${BOLD}====================================================${NC}"
echo ""

# --- Menu Data ---
options=(
  "Global Theme (Look and Feel)"
  "Plasma Desktop Theme (Panels & Widgets)"
  "Window Decorations (Aurorae)"
  "Color Schemes"
  "Icons"
  "Sounds"
  "Wallpapers"
)
# 1 = checked, 0 = unchecked. Default all to checked.
selected=(1 1 1 1 1 1 1)
cursor=0

# --- UI Functions ---
print_menu() {
    echo -e "${CYAN}${BOLD}Use UP/DOWN arrows to navigate, SPACE to toggle, ENTER to confirm:${NC}"
    for i in "${!options[@]}"; do
        local prefix="   "
        if [ $i -eq $cursor ]; then
            prefix=" ${BLUE}❯${NC} " # Pointer
        fi
        
        local check="[ ]"
        if [ "${selected[$i]}" -eq 1 ]; then
            check="[${GREEN}✔${NC}]"
        fi
        
        echo -e "${prefix}${check} ${options[$i]}"
    done
}

clear_menu() {
    # Move cursor up and clear lines based on the number of options + 1 for the title
    for ((i=0; i<=${#options[@]}; i++)); do
        echo -ne "\033[1A\033[2K"
    done
}

# --- Interactive Menu Loop ---
tput civis # Hide terminal cursor
print_menu

while true; do
    # DODANO 'IFS=' ABY BASH NIE POŁYKAŁ SPACJI!
    IFS= read -rsn1 key < /dev/tty
    
    case "$key" in
        $'\x1b') # Escape sequence for arrow keys
            read -rsn2 -t 0.1 seq < /dev/tty
            case "$seq" in
                "[A") # Up arrow
                    ((cursor--))
                    [ $cursor -lt 0 ] && cursor=$((${#options[@]} - 1))
                    ;;
                "[B") # Down arrow
                    ((cursor++))
                    [ $cursor -ge ${#options[@]} ] && cursor=0
                    ;;
            esac
            ;;
        " ") # Spacebar to toggle
            selected[$cursor]=$((1 - selected[$cursor]))
            ;;
        "") # Enter key to confirm
            break
            ;;
    esac
    clear_menu
    print_menu
done

tput cnorm # Restore terminal cursor

echo -e "\n${BLUE}Downloading assets from GitHub...${NC}"
TMP_DIR=$(mktemp -d)
cd "$TMP_DIR" || exit

curl -sSL https://github.com/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma/archive/refs/heads/main.tar.gz -o theme.tar.gz

echo -e "${BLUE}Extracting files...${NC}"
tar -xzf theme.tar.gz
cd Blue-Archive-Theme-KDE-Plasma-main || exit

echo -e "\n${CYAN}${BOLD}Installing selected components...${NC}"

# --- Installation Logic based on Checkboxes ---
if [ "${selected[0]}" -eq 1 ]; then
    echo -e "  ${GREEN}✔${NC} Global Theme (Look and Feel)"
    mkdir -p ~/.local/share/plasma/look-and-feel
    cp -r look-and-feel/* ~/.local/share/plasma/look-and-feel/ 2>/dev/null
fi

if [ "${selected[1]}" -eq 1 ]; then
    echo -e "  ${GREEN}✔${NC} Plasma Desktop Theme"
    mkdir -p ~/.local/share/plasma/desktoptheme
    cp -r desktoptheme/* ~/.local/share/plasma/desktoptheme/ 2>/dev/null
fi

if [ "${selected[2]}" -eq 1 ]; then
    echo -e "  ${GREEN}✔${NC} Window Decorations (Aurorae)"
    mkdir -p ~/.local/share/aurorae/themes
    cp -r aurorae/* ~/.local/share/aurorae/themes/ 2>/dev/null
fi

if [ "${selected[3]}" -eq 1 ]; then
    echo -e "  ${GREEN}✔${NC} Color Schemes"
    mkdir -p ~/.local/share/color-schemes
    cp -r color-schemes/* ~/.local/share/color-schemes/ 2>/dev/null
fi

if [ "${selected[4]}" -eq 1 ]; then
    echo -e "  ${GREEN}✔${NC} Icons"
    mkdir -p ~/.local/share/icons
    cp -r icons/* ~/.local/share/icons/ 2>/dev/null
fi

if [ "${selected[5]}" -eq 1 ]; then
    echo -e "  ${GREEN}✔${NC} Sounds"
    mkdir -p ~/.local/share/sounds
    cp -r sounds/* ~/.local/share/sounds/ 2>/dev/null
fi

if [ "${selected[6]}" -eq 1 ]; then
    echo -e "  ${GREEN}✔${NC} Wallpapers"
    mkdir -p ~/.local/share/wallpapers
    cp -r wallpapers/* ~/.local/share/wallpapers/ 2>/dev/null
fi

# --- Cleanup ---
echo -e "\n${BLUE}Cleaning up temporary files...${NC}"
cd ~ || exit
rm -rf "$TMP_DIR"

# --- Success Message ---
echo -e "${GREEN}${BOLD}Installation Complete!${NC}"
echo -e "You can now apply your newly installed components in ${CYAN}KDE System Settings${NC}."
echo -e "${YELLOW}(Note: Plymouth boot themes require manual installation due to sudo permissions. See the README for instructions).${NC}\n"