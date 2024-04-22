{ pkgs }:
with pkgs; [
  # lsps
  clang-tools
  rust-analyzer
  nodePackages_latest.pyright
  nil

  # development environment
  lazygit
]
