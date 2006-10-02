en: en-screen

nl: nl-screen

cz: cz-screen cz-print cz-bulletin

en-screen:
	cd en
	texmfstart texexec --pdf --mode=screen --result=ma-cb-en-screen.pdf ma-cb-en
	mv ma-cb-en-screen.pdf ../
	cd ..

nl-screen:
	cd nl
	texmfstart texexec --pdf --mode=screen --result=ma-cb-nl-screen.pdf ma-cb-nl
	mv ma-cb-nl-screen.pdf ../
	cd ..

cz-screen:
	cd cz
	texmfstart texexec --pdf --mode=screen --result=ma-cb-cz-screen.pdf ma-cb-cz
	mv ma-cb-cz-screen.pdf ../
	cd ..

cz-print:
	cd cz
	texmfstart texexec --pdf --mode=print --result=ma-cb-cz-print.pdf ma-cb-cz
	mv ma-cb-cz-print.pdf ../
	cd ..

cz-bulletin:
	cd cz
	texmfstart texexec --pdf --mode=bulletin --result=ma-cb-cz-bulletin.pdf ma-cb-cz
	mv ma-cb-cz-bulletin.pdf ../
	cd ..

clean:
	cd cz
	texmfstart texexec --purgeall
	cd ..
	cd en
	texmfstart texexec --purgeall
	cd ..
	cd nl
	texmfstart texexec --purgeall
	cd ..
