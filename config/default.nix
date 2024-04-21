{pkgs}: let
  scripts2ConfigFiles = dir: let
    configDir = pkgs.stdenv.mkDerivation {
      name = "nvim-${dir}-configs";
      src = ./${dir};
      installPhase = ''
        mkdir -p $out/
        cp -r ./* $out/
      '';
    };
  in
    builtins.map (file: "${configDir}/${file}")
    (builtins.attrNames (builtins.readDir configDir));

  sourceConfigFiles = files:
  # builtins.concatStringsSep "\n" (builtins.map (file:
  #   (if pkgs.lib.strings.hasSuffix "lua" file then "luafile" else "source")
  #   + " ${file}") files);
    builtins.concatStringsSep "\n" (builtins.map (file:
      "luafile"
      + " ${file}")
    files);

  core = scripts2ConfigFiles "lua/core";
  plugins = scripts2ConfigFiles "lua/plugins";
  lsp = scripts2ConfigFiles "lua/lsp";
in
  builtins.concatStringsSep "\n"
  (builtins.map (configs: sourceConfigFiles configs) [core plugins lsp])
