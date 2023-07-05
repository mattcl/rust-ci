#!/bin/sh
set -ex

# we're going to "update" to the minimal versions, leaving the lockfile in the
# output that we pass to the next task
cargo +nightly update -Z direct-minimal-versions
