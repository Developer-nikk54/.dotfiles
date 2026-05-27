#!/usr/bin/env fish

function show_menu
    clear

    echo "=================================="
    echo "         SYSTEM TOOLKIT"
    echo "=================================="
    echo ""

    echo "[ FILE / DIRECTORY OPERATIONS ]"
    echo "01 -> ls"
    echo "02 -> pwd"
    echo "03 -> mkdir testdir"
    echo "04 -> rm -rf testdir"
    echo ""

    echo "[ NETWORKING ]"
    echo "11 -> ip addr"
    echo "12 -> ping google.com"
    echo "13 -> ss -tulpn"
    echo "14 -> curl ifconfig.me"
    echo ""

    echo "[ SYSTEM INFO ]"
    echo "21 -> uname -a"
    echo "22 -> fastfetch"
    echo "23 -> uptime"
    echo "24 -> free -h"
    echo ""

    echo "[ PROCESS MANAGEMENT ]"
    echo "31 -> ps aux"
    echo "32 -> top"
    echo "33 -> kill process"
    echo ""

    echo "00 -> Exit"
    echo ""
end

while true
    show_menu

    read -P "Enter Command Number: " choice

    switch $choice

        # =========================
        # FILE / DIRECTORY
        # =========================

        case 01
            ls -la

        case 02
            pwd

        case 03
            mkdir testdir

        case 04
            rm -rf testdir

            # =========================
            # NETWORKING
            # =========================

        case 11
            ip addr

        case 12
            ping google.com

        case 13
            ss -tulpn

        case 14
            curl ifconfig.me

            # =========================
            # SYSTEM INFO
            # =========================

        case 21
            uname -a

        case 22
            neofetch

        case 23
            uptime

        case 24
            free -h

            # =========================
            # PROCESS MANAGEMENT
            # =========================

        case 31
            ps aux

        case 32
            top

        case 33
            read -P "PID: " pid
            kill $pid

            # =========================
            # EXIT
            # =========================

        case 00
            echo "Goodbye!"
            break

        case '*'
            echo "Invalid Option"

    end

    echo ""
    read -P "Press Enter To Continue..."
end
