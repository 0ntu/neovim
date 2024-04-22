{ pkgs }:
with pkgs; [
  # lsps
  clang-tools
  rust-analyzer
  nodePackages_latest.pyright
  nil

  # rust
  cargo
  rustc

  # development environment
  lazygit
]
