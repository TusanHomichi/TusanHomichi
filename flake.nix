{
  description = "Peter Permenter's GitHub profile";

  inputs.burrow.url = "git+https://github.com/FieldmouseWorks/burrow";

  # `nix develop` for the tools, `nix flake check` for the gate (see burrow's
  # lib/project.nix). The repo is Markdown, so the gate is its own: every
  # local link and #fragment the profile points at is found.
  outputs =
    { self, burrow }:
    burrow.lib.project {
      inherit self;
      packages = pkgs: [ pkgs.lychee ];
      checks = pkgs: {
        # lychee, offline, over every Markdown file. External links aren't
        # checked, but lychee won't start without CA certificates.
        links = pkgs.runCommand "links" { nativeBuildInputs = [ pkgs.lychee ]; } ''
          export SSL_CERT_FILE=${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt
          cd ${self}
          lychee --offline --no-progress --include-fragments \
            --root-dir "$PWD" \
            ./*.md
          touch $out
        '';
      };
    };
}
