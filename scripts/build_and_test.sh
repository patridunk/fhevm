#!/usr/bin/env bash
set -euo pipefail

# Convenience wrapper to build and test the Rust parts of FHEVM.

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT_DIR}"

echo "Running cargo fmt..."
cargo fmt

echo
echo "Running cargo test..."
cargo test

echo
echo "Build and tests completed."
