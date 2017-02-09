#!/bin/sh

find bundle/ -name ".git" -type d -exec rm -rf "{}" \;
