#!/data/data/com.termux/files/usr/bin/bash
# ===============================
#   MARPD DEMO TOOL v1.0
# ===============================

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

# Banner
banner() {
clear
echo -e "${BLUE}"
echo "╔════════════════════════════════╗"
echo "║        MARPD 🪓 TOOL         ║"
echo "║        Version 1.0             ║"
echo "╚════════════════════════════════╝"
echo -e "${NC}"
}

# Check files exist
check_files() {
  if [ ! -f "$PWD/marpd.html" ]; then
    echo -e "${RED}Error: marpd.html missing!${NC}"
    exit 1
  fi
  if [ ! -f "$PWD/password.txt" ]; then
    echo -e "${RED}Error: password.txt missing!${NC}"
    exit 1
  fi
}

# Menu
menu() {
echo -e "${YELLOW}[1]${NC} Show HTML file"
echo -e "${YELLOW}[2]${NC} Show Password list"
echo -e "${YELLOW}[3]${NC} Count Passwords"
echo -e "${YELLOW}[4]${NC} Help"
echo -e "${YELLOW}[0]${NC} Exit"
echo
}

# Help
help_menu() {
echo -e "${GREEN}Usage:${NC}"
echo "  Run 'marpd' and choose any option from the menu."
echo
echo -e "${GREEN}Options:${NC}"
echo "  [1] Show marpd.html file content"
echo "  [2] Show password.txt list"
echo "  [3] Count number of lines in password.txt"
echo "  [4] Show this help message"
echo "  [0] Exit the tool"
echo
echo "⚠️  This is only a DEMO tool (for learning purpose)."
}

# Main Loop
check_files
while true; do
  banner
  menu
  read -p "Enter choice: " choice
  case $choice in
    1) echo -e "${GREEN}--- marpd.html ---${NC}"; cat marpd.html; read -p "Press Enter to continue..." ;;
    2) echo -e "${GREEN}--- password.txt ---${NC}"; cat password.txt; read -p "Press Enter to continue..." ;;
    3) echo -e "${GREEN}Password count:${NC} $(wc -l < password.txt)"; read -p "Press Enter to continue..." ;;
    4) help_menu; read -p "Press Enter to continue..." ;;
    0) echo -e "${RED}Exiting...${NC}"; exit 0 ;;
    *) echo -e "${RED}Invalid choice!${NC}"; sleep 1 ;;
  esac
done