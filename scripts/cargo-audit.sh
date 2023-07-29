#!/bin/sh
set -ex

# TODO: remove this once a new version of chrono comes out. This advisory has
# been open for a while now.
cargo audit --ignore RUSTSEC-2020-0071
