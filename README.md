
# dbf2csv

`DBF2CSV` is a program to convert `.DBF` database files to the `.CSV` (comma-separated values) format.

## Overview

[Dave Burton](http://burtonsys.com/) was kind enough to provide [this answer](https://stackoverflow.com/a/40950025/2860309) to a question about extracting data from FoxPro files.

The original code was intended to be run under Windows and can be found [here](https://github.com/therightstuff/dbf2csv-perl/tree/original-source). This project has been modified to run on OS X.

## License

This software was initially created by Dave Burton is not copyrighted (see the original [PAD_FILE.XML](https://github.com/therightstuff/dbf2csv-perl/blob/original-source/PAD_FILE.XML) for details). This repository has been ["unlicensed"](https://github.com/therightstuff/dbf2csv-perl/blob/main/LICENSE) accordingly.

## Usage

For usage instructions from a command prompt, run the script with no parameters:

     ./dbf2csv.pl

To convert a `.dbf` file, provide it as an argument to the script. If the `.dbf` includes memo fields then its `.fpt` file must be in the same path, but only the `.dbf` file must be provided as an argument.

     ./dbf2csv.pl afile.dbf

The outfile `.csv` file will have the same path and name as the original `.dbf` file (with a different extension).
