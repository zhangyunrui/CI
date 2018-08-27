#!/bin/bash
REPO=$1

source run_or_fail.sh

run_or_fail "Repository folder not found" pushd "$REPO" 1> /dev/null
run_or_fail "Can not initial pipenv shell" pipenv shell
py.test tests 2>&1
popd 1> /dev/null