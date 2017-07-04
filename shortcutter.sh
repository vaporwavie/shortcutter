#!/bin/bash

<<<<<<< HEAD
echo "# Shorcutter aliases" >> ~/.zshrc

# Menu
echo "Welcome to shortcutter!"
=======
echo "Shortcutter is a script that will assist you to create new shortcuts for your terminal."
echo "Please note that this release is only intended for ZSH users. Bash will be implemented, and any other shell types will be welcomely accepted to integrate."
sleep 2 && clear

echo "Setting a space for Shortcutter at .zshrc"
sed -i '# Shorcutter v.0.1' ~/.zshrc
echo "Done."
sleep 1 && clear

# Menu
echo "Options"
>>>>>>> 743de60c929f811cc35af4778f2d9ece344506b4
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
<<<<<<< HEAD
    sudo cp ~/.zshrc /~.zshrc.bk
    echo "Zshrc backup created."
    echo "Done! Changes should appear after a new terminal window is oppened."
    echo "alias $n='$c' \n # Description: Shorcutter generated: $d" ~/.zshrc >> ~/.zshrc
    echo "Shortcut name: $n"
    echo "Command: $c"
    echo "Description: $d"
=======
    sed -i "alias $n='$c' # This (Shortcutter) command does: $d" ~/.zshrc
    echo "Your shortcut is named $n, which does $d with this command: $c"
>>>>>>> 743de60c929f811cc35af4778f2d9ece344506b4
fi

if [[ $x =~ 2 ]]; then
    clear
    echo "Listing shortcutter created shortcuts..."
<<<<<<< HEAD
    cat ~/.zshrc | grep "Shortcutter"
=======
    find ~/.zshrc -name "Shortcutter"
>>>>>>> 743de60c929f811cc35af4778f2d9ece344506b4
    if [[ !find ]]; then
        echo "Seems like Shortcutter haven't created a shorcut yet."
    fi
fi

if [[ $x =~ 3 ]]; then
    clear
    echo "This is your installed shortcuts:"
<<<<<<< HEAD
    cat ~/.zshrc | grep "Shortcutter"
=======
    find ~/.zshrc -name "Shortcutter"
>>>>>>> 743de60c929f811cc35af4778f2d9ece344506b4
    echo "Type its name and then press ENTER."
    read del
    sed "/$del/d" ./zshrc
    echo "Deleted!"
fi

<<<<<<< HEAD
=======

>>>>>>> 743de60c929f811cc35af4778f2d9ece344506b4
