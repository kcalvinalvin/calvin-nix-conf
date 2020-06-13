# Utreexo environment

Dependency: direnv

Go has a robust build system that depends on GOPATH. With this, we only need to
define the environment variables like GOPATH to have a reproducible environment.

The problem with the go build system arises when a user wishes to have multiple copies of a
project(ex with git worktree). Since the package import syntax in Go is dependent on paths,
'go build' will fetch from the user's main directory

ex: '~/go/src/github.com/project/important-project'

even if the user may be working on a separate directory at

ex: '~/go/src/github.com/project/testingsomething'

Go modules can solve this but it can be tedious if the there are to be many different
repositories. With this .envrc path, the user keeps multiple directories that are all
separate from each other.
