# Command Line SDK

The search, text and archive tools a development environment is expected to
have, packaged as a cpak addon: jq, ripgrep, fd, fzf, shellcheck, sqlite3 and
the usual archive handling.

It is separate from the source control SDK because plenty of things want to
grep and unpack without wanting git, and the other way round.

## Use it

```bash
cpak addon enable github.com/containerpak/vscode github.com/containerpak/sdk-cli
```
