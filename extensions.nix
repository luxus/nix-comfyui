{ callPackage }:

{
  acly-inpaint =
    callPackage ./extensions/acly-inpaint.nix { };
  acly-tooling =
    callPackage ./extensions/acly-tooling.nix { };
  cubiq-ipadapter-plus =
    callPackage ./extensions/cubiq-ipadapter-plus.nix { };
  fannovel16-controlnet-aux =
    callPackage ./extensions/fannovel16-controlnet-aux.nix { };
  fannovel16-frame-interpolation =
    callPackage ./extensions/fannovel16-frame-interpolation.nix { };
  gourieff-reactor =
    callPackage ./extensions/gourieff-reactor.nix { };
  lev145-images-grid =
    callPackage ./extensions/lev145-images-grid.nix { };
  ssitu-ultimate-sd-upscale =
    callPackage ./extensions/ssitu-ultimate-sd-upscale.nix { };
}