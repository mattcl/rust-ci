#!/bin/sh
set -ex

cargo build --verbose ${EXTRA_CARGO_BUILD_FLAGS}
cargo test --verbose ${EXTRA_CARGO_TEST_FLAGS}
