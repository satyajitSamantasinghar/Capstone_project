#!/bin/bash
# maintenance_menu.sh - Menu-driven system maintenance suite

while true; do
    clear
    echo "===================================="
    echo "    SYSTEM MAINTENANCE SUITE"
    echo "===================================="
    echo "1. Backup Files"
    echo "2. Update & Clean System"
    echo "3. Monitor Logs"
    echo "4. Exit"
    echo "------------------------------------"
    read -p "Enter your choice: " choice

    case $choice in
        1) bash backup.sh ;;
        2) bash update_cleanup.sh ;;
        3) bash log_monitor.sh ;;
        4) echo " Exiting..."; exit 0 ;;
        *) echo " Invalid choice";;
    esac
    read -p "Press Enter to continue..."
done
