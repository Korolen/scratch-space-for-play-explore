#!/bin/sh

# This script continuously does the work of the pre-commit hook every 5 seconds.

# This is useful if you are working on a project that uses nbdev
# with modified custom pre-commit hooks, and you don't know how to
# get git to use them.

# This script is not intended to be used in production.

# define pre-commit hook function
pre_commit() {
    echo "Running pre-commit hook..."
    nbdev_clean
    nbdev_export
    echo "Pre-commit hook complete."
}

# loop forever
while true; do
    # run the pre-commit hook
    pre_commit
    # wait 5 seconds
    sleep 5
done