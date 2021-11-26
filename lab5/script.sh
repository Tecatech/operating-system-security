#!/bin/bash

ps -eo "%u%u%c" | tail -n +2 | awk '{if ($1 != $2) print $3}'