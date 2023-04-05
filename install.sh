#!/bin/bash

SCRIPT_NAME="create-react-component"     # Replace with the desired alias name

# Check if the alias already exists
ALIAS_EXISTS=$(grep -ic "$SCRIPT_NAME=" ~/.bashrc)

# Copy the script to the /usr/local/bin directory
sudo cp $SCRIPT_NAME /usr/local/bin

# Make the script executable
sudo chmod +x /usr/local/bin/$SCRIPT_NAME

if [ $ALIAS_EXISTS -eq 0 ]; then
  # Add the alias to the .bashrc file
  echo "alias $SCRIPT_NAME='/usr/local/bin/$SCRIPT_NAME'" >> ~/.bashrc

  # Apply the changes to the current terminal session
  source ~/.bashrc
fi

echo 'Alias created in "~/.bashrc" and script installed in "/usr/local/bin/'$SCRIPT_NAME'"'