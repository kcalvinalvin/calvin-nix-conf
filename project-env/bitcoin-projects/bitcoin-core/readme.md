# Bitcoin Core reproducible environment with nix-shell

C and C++ build environments require dependencies to be built and available on
the system. With nix-shell, we are able to define an environment with *only* the
dependencies that we want. This lets us avoid dependency conflicts and version
conflicts with same dependencies that we may have with different projects.

'nix-shell shell.nix' to use the shell.nix derivation. This will create a bash
shell that satisfies all Bitcoin Core required dependencies. Instructions for
fancier setups with custom shells (zsh, fish) and caching can be found at: github.com/direnv/direnv/wiki/Nix

You will need to generate compile-commands.json with github.com/rizsotto/bear for
the lsp functions to work properly. You can do so by following the commands on the
bear repo.
