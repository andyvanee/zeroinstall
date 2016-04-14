ZeroInstall
========================================

A collection of single-file, pre-compiled shell tools which have very minimal
dependencies.

You should be able to just copy any files in the `bin` directory into your own
project and they should *just work™*

Generally the dependencies should only include what is available in a fresh
installation of Ubuntu such as:

- bash
- sed, awk, cut, ...
- perl 5

Exceptions *may* be made for the following:

- python zip files
- JVM jar files


Some sample commands:

    bin/mustache data/sample.yml data/sample.mustache

### Why??

- I like simple tools in simple packages
- I don't like managing dependencies and configuration
- I don't like package managers. That's right - none of them
