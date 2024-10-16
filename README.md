# Doxygen Example

This repository contains a simple C project demonstrating basic math operations. It serves as an example of how to set up a C project with documentation using Doxygen and continuous integration using GitHub Actions.

## Project Structure

- `math_operations.c`: Implementation of basic math operations
- `math_operations.h`: Header file declaring the math operations
- `main.c`: Main program demonstrating the use of math operations
- `Makefile`: Used to compile the project and generate documentation
- `Doxyfile`: Configuration file for Doxygen
- `.github/workflows/c-doxygen.yml`: GitHub Actions workflow for CI/CD

## Prerequisites

- GCC compiler
- Make
- Doxygen (for generating documentation)

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

To generate documentation using Doxygen, run:

```
make docs
```

This will create a `docs` directory containing the generated HTML documentation. You can view it by opening `docs/html/index.html` in a web browser.

## Continuous Integration

This project uses GitHub Actions for continuous integration. The workflow does the following:

1. Builds the project
2. Generates documentation
3. Uploads the generated documentation as an artifact

You can view the workflow runs in the "Actions" tab of the GitHub repository.

## Contributing

Contributions to improve the project are welcome. Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).