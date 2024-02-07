#!/bin/sh
set -ex

# TODO: remove after https://github.com/RustCrypto/RSA/pull/394
cargo audit --ignore RUSTSEC-2023-0071
