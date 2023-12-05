REM include POSIX'd paths
set "PKG_CPPFLAGS=-I%LIBRARY_INC:\=/%"
set "PKG_LIBS=-L%LIBRARY_LIB:\=/%

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
