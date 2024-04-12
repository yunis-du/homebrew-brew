# homebrew-brew

This is a tap for homebrew.

## Usage

Once this tap is installed, you can install the tools I provided through brew.
Such as, [flash-cat](https://github.com/yunis-du/flash-cat).
```bash
brew tap yunis-du/brew
brew install flash-cat
```

Or you can directly install through the following command, when there is a name conflict or not.
```bash
$ brew install yunis-du/brew/flash-cat
```

Here is a command to view the installation location of tap
```
$ cd `brew --repo`/Library/Taps
$ ls
homebrew  yunis-du
```