# Doxygen Example

This repository contains a simple `C` project demonstrating basic math operations. It serves as an example of how to set up a `C` project with documentation using **Doxygen** and **CI** using **GitHub Actions**.

## About Doxygen

**Doxygen** is a documentation generator and static analysis tool for software projects. It's designed to process source code and generate comprehensive documentation in various formats, including `HTML`, `LaTeX`, `PDF`, `XML`, `Man pages` and [more](https://www.doxygen.nl/manual/output.html).

## Purpose of Doxygen

The main purposes of Doxygen are:

- **Automatic Documentation**: It extracts documentation from source code comments, reducing the effort needed to maintain separate documentation.
- **Code Navigation**: It generates cross-referenced documentation, making it easier to navigate large codebases.
- **Visualization**: It can create diagrams (like call and dependency graphs) to visualize code structure.
- **Consistency**: It enforces a consistent documentation style across a project.

## Supported Languages

**Doxygen** supports a wide range of programming languages, including but not limited to:

- `C`
- `C++`
- `Objective-C`
- `C#`
- `Python`
- `PHP`
- `Java`
- `Fortran`
- `VHDL`
- `Splice`
- `IDL`
- `Lex`

In this project, we're using **Doxygen** with `C`, but its capabilities extend far beyond just `C` programming.

## Project Structure

```
├── .github
│   └── workflows
│       └── c-doxygen.yml
├── source
│   ├── Doxyfile
│   ├── main.c
│   ├── Makefile
│   ├── math_operations.c
│   └── math_operations.h
└── README.md
```

- `.github/workflows/c-doxygen.yml`: GitHub Actions workflow for CI/CD
- `source/`: Directory containing all source code and project files
  - `Doxyfile`: Configuration file for Doxygen
  - `main.c`: Main program demonstrating the use of math operations
  - `Makefile`: Used to compile the project and generate documentation
  - `math_operations.c`: Implementation of basic math operations
  - `math_operations.h`: Header file declaring the math operations

## Prerequisites

- GCC compiler
- Make
- Doxygen

## Building the Project

To build the project, run:

```
make
```

This will compile the source files and create an executable named `main`.

## Running the Program

After building, you can run the program with:

```
./main
```

This will demonstrate the basic math operations implemented in the project.

## Generating Documentation

To generate documentation using **Doxygen**, run:

```
make docs
```

This will create a `docs` directory containing the generated `HTML` documentation. You can view it by opening `docs/html/index.html` in a web browser.

## Continuous Integration

This project uses **GitHub Actions** for continuous integration. The workflow does the following:

1. Builds the project
2. Generates documentation
3. Uploads the generated documentation as an artifact

You can view the workflow runs in the **"Actions"** tab of the GitHub repository.

## Contributing

Contributions to improve the project are welcome. Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).