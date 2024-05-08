#!/bin/bash

# Author: Diego Vargas (f1rul4yx)

# Colors
negrita="\033[1m"
subrayado="\033[4m"
negro="\033[30m"
rojo="\033[31m"
verde="\033[32m"
amarillo="\033[33m"
azul="\033[34m"
magenta="\033[35m"
cian="\033[36m"
blanco="\033[37m"
reset="\033[0m"

# Functions
function logo() {
    clear
    echo -e '                  ______'
    echo -e '               .-"      "-.'
    echo -e '              /            \'
    echo -e '  _          |              |          _'
    echo -e ' ( \         |,  .-.  .-.  ,|         / )'
    echo -e '  > "=._     | )(__/  \__)( |     _.=" <'
    echo -e ' (_/"=._"=._ |/     /\     \| _.="_.="\_)'
    echo -e '        "=._ (_     ^^     _)"_.="'
    echo -e '            "=\__|IIIIII|__/="'
    echo -e '    __ _            _ _  _'
    echo -e '   / _/ |_ __ _   _| | || |  _   ___  __'
    echo -e "  | |_| | '__| | | | | || |_| | | \ \/ /"
    echo -e '  |  _| | |  | |_| | |__   _| |_| |>  <'
    echo -e '  |_| |_|_|   \__,_|_|  |_|  \__, /_/\_\'
    echo -e '                             |___/'
    echo -e '           _.="| \IIIIII/ |"=._'
    echo -e ' _     _.="_.="\          /"=._"=._     _'
    echo -e '( \_.="_.="     `--------`     "=._"=._/ )'
    echo -e ' > _.="                            "=._ <'
    echo -e '(_/                                    \_)\n\n'
}
function question1() {
    logo
    echo -e "\n${negrita}Indica tu nombre de usuario de GitHub:${reset} \c"
    read question1
}
function question2() {
    logo
    echo -e "\n${negrita}Indica tu email de GitHub:${reset} \c"
    read question2
}
function commands() {
    logo
    git config --global user.name "${question1}"
    git config --global user.email "${question2}"
    git config --global core.editor "code --wait"
    git config --global core.autocrlf input
    echo -e "\n${negrita}${verde}Programa lanzado con exito${reset}"
}

# Program
question1
question2
commands
