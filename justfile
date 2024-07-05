set positional-arguments := true

[private]
@default:
    just --list --unsorted

build name:
    nix build --out-link result-{{ quote(name) }} --print-build-logs \
      --verbose "${@:2}" .#{{ quote(name) }}

check:
    just --unstable --fmt --check
    nixpkgs-fmt --check .
    yapf --recursive --parallel --diff .

fmt:
    just --unstable --fmt
    nixpkgs-fmt .
    yapf --recursive --parallel --in-place .

poetry *args:
    nix run .#call-poetry -- "$@"

repl:
    nix repl --extra-experimental-features "flakes repl-flake" .

up: up-flake up-lock up-sources

up-flake:
    nix flake update

up-lock: (poetry "lock")

up-sources:
    python3 update.py