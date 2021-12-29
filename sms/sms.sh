#!/bin/bash

curl -X POST https://textbelt.com/text \
       --data-urlencode phone='5555555555' \
       --data-urlencode message='Hello world' \
       -d key=textbelt