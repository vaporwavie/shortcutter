#!/bin/bash

echo "Shortcutter is a script that will assist you to create new shortcuts for your terminal."
echo "Please note that this release is only intended for ZSH users. Bash will be implemented, and any other shell types will be welcomely accepted to integrate."
sleep 2 && clear

echo "Setting a space for Shortcutter at .zshrc"
sed -i '# Shorcutter v.0.1' ~/.zshrc
echo "Done."
sleep 1 && clear

# Menu
echo "Options"
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
    sed -i "alias $n='$c' # This (Shortcutter) command does: $d" ~/.zshrc
    echo "Your shortcut is named $n, which does $d with this command: $c"
fi

if [[ $x =~ 2 ]]; then
    clear
    echo "Listing shortcutter created shortcuts..."
    find ~/.zshrc -name "Shortcutter"
    if [[ !find ]]; then
        echo "Seems like Shortcutter haven't created a shorcut yet."
    fi
fi

if [[ $x =~ 3 ]]; then
    clear
    echo "This is your installed shortcuts:"
    find ~/.zshrc -name "Shortcutter"
    echo "Type its name and then press ENTER."
    read del
    sed "/$del/d" ./zshrc
    echo "Deleted!"
fi


