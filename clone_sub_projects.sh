#!/bin/sh

set -x

BRANCH_NAME=$(echo $BRANCH_REF_NAME | grep -Po '[^/]*/[^/]*/\K[^ ]+')

while read in; do eval "git clone -b $BRANCH_NAME $in || git clone $in"; done < repositories.txt
