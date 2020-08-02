#!/bin/bash

# Symlink the configuration to mutt's default search file
MUTT_CONF=~/.muttrc
if [ -f  $MUTT_CONF ]; then
    rm $MUTT_CONF
fi
ln -s $(pwd).muttrc $MUTT_CONF

