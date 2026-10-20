# doguyilmaz/tap

```sh
brew tap doguyilmaz/tap
brew trust doguyilmaz/tap
brew install doguyilmaz/tap/<name>
```

Homebrew loads casks only from taps you trust; `brew trust` says that you trust this one.

On Windows this repository is also a Scoop bucket:

```sh
scoop bucket add doguyilmaz https://github.com/doguyilmaz/homebrew-tap
scoop install doguyilmaz/<name>
```

| Path | What it holds |
| --- | --- |
| `Casks/` | Homebrew casks, written by tapster from signed, notarized releases |
| `bucket/` | Scoop manifests for packages with Windows builds |
| `tapster.yml` | which projects this hub publishes |
| `.tapster/state.json` | the releases tapster published |

Releases are signed and published by the `tapster` workflow; change the projects, not these files.
