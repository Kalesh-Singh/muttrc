#!/bin/bash

# Symlink the configuration to mutt's default search file
MUTT_CONF=~/.muttrc
if [ -f  $MUTT_CONF ]; then
    rm $MUTT_CONF
fi
ln -s $(pwd).muttrc $MUTT_CONF

# Enable the githooks to check for passwords and emails
# before commiting them into the git history - Offf! :(
git config core.hooksPath .githooks
