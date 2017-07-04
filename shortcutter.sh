#!/bin/bash

echo "# Shorcutter aliases" >> ~/.zshrc

# Menu
echo "Welcome to shortcutter!"
echo "1 - Create a shortcut"
echo "2 - Installed shortcuts"
echo "3 - Delete a shortcut"
read x

if [[ $x =~ 1 ]]; then
    clear
    echo "Select a name for your shortcut (e.g quicky)"
    read n
    echo "Now choose what command this shortcut will do (e.g sudo apt update)"
    read c
    echo "Finally, choose a description for it. It's good to know what you have in your system."
    read d

    # creating a shortcut
    sudo cp ~/.zshrc /~.zshrc.bk
    echo "Zshrc backup created."
    echo "Done! Changes should appear after a new terminal window is oppened."
    echo "alias $n='$c' \n # Description: Shorcutter generated: $d" ~/.zshrc >> ~/.zshrc
    echo "Shortcut name: $n"
    echo "Command: $c"
    echo "Description: $d"
fi

if [[ $x =~ 2 ]]; then
    clear
    echo "Listing shortcutter created shortcuts..."
    cat ~/.zshrc | grep "Shortcutter"
    if [[ !find ]]; then
        echo "Seems like Shortcutter haven't created a shorcut yet."
    fi
fi

if [[ $x =~ 3 ]]; then
    clear
    echo "This is your installed shortcuts:"
    cat ~/.zshrc | grep "Shortcutter"
    echo "Type its name and then press ENTER."
    read del
    sed "/$del/d" ./zshrc
    echo "Deleted!"
fi

