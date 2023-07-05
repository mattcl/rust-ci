#!/bin/sh
set -ex

if [ "$LINT" -eq 1 ]; then
    # make sure we're formatted
    cargo fmt --check

    # fail on clippy warnings
    cargo clippy -- -Dwarnings
fi

# ensure we can build
cargo build --verbose ${EXTRA_CARGO_BUILD_FLAGS}

# ensure tests pass
cargo test --verbose ${EXTRA_CARGO_TEST_FLAGS}
