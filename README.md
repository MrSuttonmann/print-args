# Command Line Argument Printer

A simple C program that demonstrates how to parse and display command line arguments, including support for `-h` and `--help` options.

## Features

- Prints out all arguments passed to the program.
- Provides a usage/help message when `-h` or `--help` is supplied.

## Usage

```

./print-args \[OPTIONS] \[INPUT]

```

### Options

- `-h, --help` — Show the help message and exit.

### Examples

**Print all arguments:**

```

./print-args foo bar baz

```

Output:
```

arg0: ./print-args
arg1: foo
arg2: bar
arg3: baz

```

**Show usage:**

```

./print-args --help

```

Output:
```

Usage: ./print-args \[OPTIONS] \[INPUT]

Options:
-h, --help    Show this help message and exit

```

## Building

Compile with `cc`:

```

cc print-args.c -o print-args

```

Run the program:

```

./print-args hello world

```

## Notes

- Argument `argv[0]` is always the program name itself.
- This project is meant as a learning example for handling command line arguments in C.
