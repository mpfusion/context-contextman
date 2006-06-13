@Echo OFF
REM %1 mode
REM %2 chapter
texmfstart texexec --pdf --mode=%1 --result=ma-cb-cz-%1.pdf ma-cb-cz-%1
