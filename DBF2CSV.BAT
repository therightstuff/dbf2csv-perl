@if '%1'=='' goto helpem
@echo perl4w32 -S dbf2csv.pl %1 %2 %3 %4 %5 %6 %7 %8 %9
perl4w32 -S dbf2csv.pl %1 %2 %3 %4 %5 %6 %7 %8 %9
@rem The "-S" option tells perl to search for dbf2csv.pl on the PATH.
@rem Unfortunately, it won't look in the current directory unless '.' is
@rem explicity included on the PATH.  (This is a Unix-ism.)
@if errorlevel 3 goto xit
@if not errorlevel 2 goto xit
@rem errorlevel 2 generally means ".pl program file not found" so try again w/o "-S"
@echo perl4w32 dbf2csv.pl %1 %2 %3 %4 %5 %6 %7 %8 %9
perl4w32 dbf2csv.pl %1 %2 %3 %4 %5 %6 %7 %8 %9
@if errorlevel 1 goto xit
@pause
@echo ---------------------------------------------------------------------------
@echo Note: To avoid the spurious "Can't execute dbf2csv.pl" error and the "press
@echo any key" pause, put dbf2csv.pl, perl4w32.exe and dbf2csv.bat in a folder on
@echo your PATH.
@goto xit
:helpem
@echo DBF2CSV -- Convert .DBF file to .csv (comma-separated) or .json format
@echo.
@echo Usage:
@echo     dbf2csv.bat infile.dbf ...
@echo or equivalently:
@echo     perl4w32 dbf2csv.pl infile.dbf ...
@echo or for .json output:
@echo     dbf2csv.bat -j infile.dbf ...
@echo or for expanded help:
@echo     dbf2csv.bat -?
@echo.
@echo For each infile.dbf, an infile.csv (or infile.json) will be created.
@echo (a dot will printed for every 2000 records, as a progress indicator)
@echo.
@echo There will be one more record in infile.csv than infile.dbf, because the
@echo field names are written to infile.csv as the first record.
@echo.
@echo Note:  When used with a DOS version of Perl, such as perl4s.exe, this
@echo program requires "8.3" (short) file names.  So you will need to rename
@echo your files if they have long file names.
@echo.
@echo -by Dave Burton  http://www.burtonsys.com/email  1-919-481-0149  (uncopyrighted)
:xit
