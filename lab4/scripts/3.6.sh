#!/bin/bash

CHAR_NUMBER=`echo -e "$USER$HOME" | tr -d "\n" | wc -c`

echo "$USER $HOME $CHAR_NUMBER"