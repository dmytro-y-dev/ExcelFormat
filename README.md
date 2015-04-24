ExcelFormat
===========

*Author: metamaker*

TODO: add me

Building the utility
--------------------

You should use bii (<http://www.biicode.com>) to build this project. Building commands are next:

1. `cd` to project's folder.
2. Run `bii init -L`.
3. Run `bii find`.
4. Run `bii cpp:configure`. You can specify your CMake generator with `-G` flag like `bii cpp:configure -G "Visual Studio 12"`.
5. Run `bii cpp:build` to build application.

Another possible option is CMake (<http://www.cmake.org/>). The steps are next:

1. Open command line and change current directory with `cd` command to the directory where you unpacked the utility's source code.
2. Run `cmake -H. -Bbuild -G "Visual Studio 12"` to create Makefile for Visual Studio 2013 (or use other generator if you use other IDE). Don't forget to specify path to dependencies libraries and headers with -D parameter.
3. Open `build/ExcelFormat.sln` and build project in Visual Studio.

License agreement
-----------------

TODO: add me

Release history
---------------

24.04.2015:
- Initial release
