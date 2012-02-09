## About ##
Little Redis Book è un'introduzione a Redis.

Questo libro è stato originariamente scritto da [Karl Seguin](http://openmymind.net), e tradotto in versione italiana da Sandro Conforto.

Se è piaciuto questo libro, potrebbe interessare anche [The Little MongoDB Book](http://openmymind.net/2011/3/28/The-Little-MongoDB-Book/), in lingua inglese.

## Licenza ##
Il libro è liberamente distribuibile sotto la licenza [Attribution-NonCommercial 3.0 Unported license](<http://creativecommons.org/licenses/by-nc/3.0/legalcode>).

## Formato ##
Il libro è scritto in [Markdown](http://daringfireball.net/projects/markdown/) e convertito in PDF usando [pandoc](http://johnmacfarlane.net/pandoc/). Si sono inseriti inoltre alcuni comandi specifici Latex per migliorare la conversione in PDF.

Per generare le versioni PDF, Kindle, EPUB, installare [pandoc](http://johnmacfarlane.net/pandoc/), un convertitore universale di documenti.


## Generare il PDF ##
pandoc include markdown2pdf per generare il PDF usando una modifica di un template <https://github.com/claes/pandoc-templates>:

	#!/bin/sh
	paper=a4paper
	hmargin=3cm
	vmargin=3cm
	fontsize=11pt

	mainfont=Verdana
	sansfont=Tahoma
	monofont="Courier New"
	columns=onecolumn
	geometry=portrait
	nohyphenation=true


	markdown2pdf --xetex --template=template/xetex.template \
	-V paper=$paper -V hmargin=$hmargin -V vmargin=$vmargin \
	-V mainfont="$mainfont" -V sansfont="$sansfont" -V monofont="$monofont" \
	-V geometry=$geometry -V columns=$columns -V fontsize=$fontsize \
	-V nohyphenation=$nohyphenation it/redis.md -o redis.pdf

## Generare l'EPUB ##
Usare il seguente comando per generare la versione EPUB:

	pandoc -f markdown -t epub --epub-metadata=en/metadata.xml \
	--template=template/xetex.template -V paper=$paper \
	-V hmargin=$hmargin -V vmargin=$vmargin -V mainfont="$mainfont" \
	-V sansfont="$sansfont" -V monofont="$monofont" -V geometry=$geometry \
	-V columns=$columns -V fontsize=$fontsize -V nohyphenation=$nohyphenation \
	it/redis.md -o redis.epub

## L'Immagine del Titolo ##
Viene inclusa un'immagine PSD dell'immagine del titolo. Il font usato è [Comfortaa](http://www.dafont.com/comfortaa.font).
