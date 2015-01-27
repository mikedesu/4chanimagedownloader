#!/bin/bash

curl $1 | tidy -i | grep i.4cdn.org | sed 's/<a href="//' | sed 's/File://' | sed 's/target=//' | sed 's/"//' | sed 's/"//' | sed 's/<a class=fileThumb href="//' | sed 's/href=//' | sed 's/^[ \t]*//' | sed 's/"_blank"//' | sed 's/>.*$//' | sed 's/"//' | sed 's/[ \t]*$//' | uniq - | sed 's/^/https:/' | xargs wget $2
