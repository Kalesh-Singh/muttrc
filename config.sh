#!/bin/bash

# Symlink the configuration to mutt's default search file
MUTT_CONF=$HOME/.muttrc
echo $MUTT_CONF
if [ -L  "$MUTT_CONF" ] || [ -f "$MUTT_CONF" ]; then
    echo "Found file exists"
    rm $MUTT_CONF
fi
ln -s $(pwd).muttrc $MUTT_CONF

# Enable the githooks to check for passwords and emails
# before commiting them into the git history - Ooff! :(
chmod +x .githooks/*
git config core.hooksPath .githooks
