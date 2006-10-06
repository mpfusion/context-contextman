@Echo OFF
texmfstart texexec --pdf --mode=screen ma-cb-cz
cp ma-cb-cz.pdf ma-cb-cz-screen.pdf
REM next line do not find .tuo in ConTeXt 2006.08.08 21:51
REM texmfstart texexec --pdf --mode=screen --result=ma-cb-cz-screen.pdf ma-cb-cz
