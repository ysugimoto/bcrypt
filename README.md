# bcrypt

Command line tool for bcrypt hash

## Installation

build your own local machine.

```shell
cargo build --release
```

## Usage

`bcrypt` command accepts a couple of input, cli argument and stdin:

### cli argument

```shell
bcrypt foobar
```

### stdin

```shell
echo "foobar" | bcrypt
```

Note that on getting from stdin, tailing LF is trimmed (avoid edge case that LF contains in macos's echo even if piped from `echo -n`)

### Licene

MIT

### Author

Yoshiaki Sugimoto
