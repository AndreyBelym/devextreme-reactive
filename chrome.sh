#!/bin/bash

echo "$@" >> log.txt

/usr/bin/google-chrome "$@" >> log.txt 2>&1
