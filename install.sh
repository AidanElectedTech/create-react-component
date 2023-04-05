#!/bin/bash

SCRIPT_FILENAME="create-react-component"
ALIAS_NAME="create-react-component"
ENVIROMENT=$(uname -s)
CONFIG_FILE=$([[ $ENVIROMENT == "Linux" ]] && echo ~/.bashrc || echo ~/.zshrc)

if [[ $ENVIROMENT != "Linux" ]]; then
    if [[ ! -e $CONFIG_FILE ]]; then
        touch "$CONFIG_FILE"
    fi
fi

# Check if the alias already exists
ALIAS_EXISTS=$(grep -ic "$ALIAS_NAME=" "$CONFIG_FILE")

# Copy the script to the /usr/local/bin directory
sudo cp $SCRIPT_FILENAME /usr/local/bin

# Make the script executable
sudo chmod +x /usr/local/bin/$SCRIPT_FILENAME

if [ $ALIAS_EXISTS -eq 0 ]; then
  # Add the alias to the .bashrc file
  echo "alias $ALIAS_NAME='/usr/local/bin/$SCRIPT_FILENAME'" >> $CONFIG_FILE

  # Apply the changes to the current terminal session
  bash
fi

echo 'Alias "'$ALIAS_NAME'" created in "'$CONFIG_FILE'" and script installed to "/usr/local/bin/'$SCRIPT_FILENAME'"'