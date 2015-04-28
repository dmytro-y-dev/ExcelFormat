ExcelFormat
===========

*Original author: Martin Fuchs*  
*Integration with CMake and bii: metamaker*

ExcelFormat allows reading, writing, and editing of XLS (BIFF8 format) files using C++. For more details see <http://www.codeproject.com/Articles/42504/ExcelFormat-Library>.

For example application which uses ExcelFormat see <https://github.com/metamaker/ExcelFormat-BiiExample>. 

[![Build Status](https://webapi.biicode.com/v1/badges/metamaker/metamaker/ExcelFormat/master)](https://www.biicode.com/metamaker/ExcelFormat)

How to build
------------

You can use this library with `bii` (<http://www.biicode.com>). To do this follow next steps:

1. In some source file of your project include ExcelFormat by adding `#include <ExcelFormat/ExcelFormat.h>`.
2. Initialize bii block inside your project's folder (if not yet then run `$ bii init -L`).
3. Run `$ bii find` to download dependencies and create `biicode.conf` file in the root of your project.
4. Wire dependencies to `biicode.conf`:

        [requirements]
	        metamaker/ExcelFormat: 0

        [includes]
            ExcelFormat/*: metamaker/ExcelFormat/include

5. Run `$ bii cpp:configure`. You can specify your CMake generator with `-G` flag like `$ bii cpp:configure -G "Visual Studio 12"`.
6. Run `$ bii cpp:build` to build your project.

Another possible option is CMake (<http://www.cmake.org/>). The steps are next:

1. Open command line and change current directory with `$ cd` command to the directory where you unpacked the project's source code.
2. Run `$ cmake -H. -Bbuild -G "Visual Studio 12"` to create Makefile for Visual Studio 2013 (or use other generator if you use other IDE). Don't forget to specify path to dependency libraries and headers with -D parameter.
3. Open `build/ExcelFormat.sln` and build solution in Visual Studio.
4. Optionally, you can install library by building project which name is `INSTALL` in Visual Studio. Remember that you must have enough rights on your system to let VS copy files to installation folder.

License agreement
-----------------

This source code and files are licensed under The Code Project Open License (CPOL) (<http://www.codeproject.com/info/cpol10.aspx>). See `CPOL.htm` for details.

Release history
---------------

28.04.2015 - Version 3.1

- FindExcelFormat.cmake is fixed to correspond new dirs structure
- Prebuilt version of library for usage in CMake projects with VS2013

24.04.2015
- Integration with CMake buildsystem

03.02.2011 - Version 3.0
- access compound document files using the Windows API
- reduced memory consumption and increased speed
- 64 bit portability
- return current value string from formula cells

01.01.2011 - Version 2.5
- Dynamically allocate memory for unexpected high row/column values while loading XLS files
- Unicode overloads for Load() and SaveAs()
- Adjust to RKValues written by OpenOffice Calc

15.11.2010 - Version 2.4
- Add second set_borderlines() overload
- Add ExcelFont::set_italic(), CellFormat::set_wrapping()
- Handle COLINFO
- Miscellaneous fixes

12.01.2010 - Version 2.3: (by Ami Castonguay and Martin Fuchs)
- Fixed reference counting of Formula data structs
- Support for shared formulas
- Support for merged cells
- Save formatting even if cell is empty
- Flush fstream instead of closing it followed by open to prevent races in conjunction with virus scanners
- Enable reading of XLS files exported by MacOS Numbers.app

07.11.2009 - Version 2.2
- Fixed VS2008 problem when reading sheets with formula fields
- Added BasicExcel::Close(), CellFormat::get/set_text_props() and get/set_borderlines()

04.10.2009 - Version 2.1
- Updated source code with macros and constants for cell and font properties

28.09.2009 - Version 2.0
- Added new section Formatting storage structures

20.09.2009 - Version 1.0 of ExcelFormat (BasicExcel Version 2.0)
