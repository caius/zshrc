# Caius' dotfiles

This contains [Caius][]' shell configuration. It's managed/rolled out through [chezmoi][], with credentials stored in [1Password][]. Written specifically for me, and you likely don't want to lift it verbatim. Feel free to however.

Please don't ridicule me for the contents, and yes I **really** am that lazy in my shell.

[Caius]: http://caius.name/
[chezmoi]: https://chezmoi.io/
[1Password]: https://1password.com/

## Installation

0. Install Chezmoi

```shell
$ brew install chezmoi
```

0. Initialize from this repository

```shell
chezmoi init https://github.com/caius/dotfiles
```

0. Diff to check what will be rolled out on the machine

```shell
chezmoi diff
```

0. When happy with changes, apply them to machine

```shell
chezmoi apply
```

## Licence

Copyright (c) 2011 Caius Durling <dev@caius.name>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
