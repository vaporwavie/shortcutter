#!/bin/bash

# Menu
echo "1 - Create a shortcut"
echo "2 - List installed shortcuts"
echo "3 - Delete a shortcut"
echo "4 - Exit"
read x

if [[ $x =~ 1 ]]; then
    clear
    echo "Select a name for your shortcut (e.g update)"
    read n
    echo "Now choose what command this shortcut will do (e.g sudo apt update)"
    read c
    echo "Finally, choose a description for it. (e.g does stuffs)"
    read d

    # creating a shortcut
    sudo cp ~/.zshrc /~.zshrc.bk
    echo "Created zshrc backup."
    echo "alias $n='$c' # Description: al1as generated: $d" >> ~/.zshrc
    echo "Done! You can use '$n' command after a new terminal window is opened."
    echo
    echo "Summary:"
    echo "Shortcut name: $n"
    echo "Command: $c"
    echo "Description: $d"
fi

if [[ $x =~ 2 ]]; then
    clear
    echo "Installed shortcuts:"
    cat ~/.zshrc | grep "al1as"
    if [[ !cat ]]; then
        echo "You don't have any configured shortcuts."
    fi
fi

if [[ $x =~ 3 ]]; then
    echo "Installed shortcuts:"
    cat ~/.zshrc | grep "al1as"
    echo "Type the command name and then press ENTER."
    read del
    sed -i "/$del/d" ~/.zshrc
    echo "Deleted!"
fi

if [[ $x =~ 4 ]]; then
    exit
fi
