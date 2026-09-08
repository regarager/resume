#!/usr/bin/sh

COMMAND="${1:-compile}"

typst $COMMAND main.typ "Redger_Xu_Resume.pdf"
