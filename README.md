# homebrew-brew

This is a tap for homebrew.

## Usage

Once this tap is installed, you can install the tools I provided through brew.
Such as, [pdh](https://github.com/duyunis/pdh).
```bash
brew tap duyunis/brew
brew install pdh
```

Or you can directly install through the following command, when there is a name conflict or not.
```bash
$ brew install duyunis/brew/pdh
```

Here is a command to view the installation location of tap
```
$ cd `brew --repo`/Library/Taps
$ ls
homebrew  duyunis
```