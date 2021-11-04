#!/bin/bash

./"$1" 1 2 3
./"$1" $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
./"$1" "foo" "bar" "foobar" "foo bar"
./"$1" "foo" "--foo" "--help" "-l"