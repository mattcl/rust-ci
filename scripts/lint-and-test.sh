#!/bin/sh
set -ex

# make sure we're formatted
cargo fmt --check

# fail on clippy warnings
cargo clippy -Dwarnings

# ensure we can build
cargo build --verbose ${EXTRA_CARGO_BUILD_FLAGS}

# ensure tests pass
cargo test --verbose ${EXTRA_CARGO_TEST_FLAGS}
