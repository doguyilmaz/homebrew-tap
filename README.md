# doguyilmaz/tap

Install anything here with Homebrew:

```sh
brew install doguyilmaz/tap/<name>
```

On Windows, the same repository is a Scoop bucket:

```sh
scoop bucket add doguyilmaz https://github.com/doguyilmaz/homebrew-tap
scoop install doguyilmaz/<name>
```

| Folder | What it holds |
| --- | --- |
| `Casks/` | Homebrew casks: the apps (battistics, hafifpix, recesso) and the command-line tools (aims, dothaven, ebb, konvoy, lockstep). Every macOS binary is signed with a Developer ID and notarized. |
| `bucket/` | Scoop manifests for the tools that ship Windows builds (aims). |
| `tap_migrations.json` | Moves installs of the old `ebb` and `lockstep` formulae to their casks. |

Everything here is written by the projects' release workflows; edit the project, not this repository.
