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


markdown2pdf --xetex --template=../template/xetex.template \
-V paper=$paper -V hmargin=$hmargin -V vmargin=$vmargin \
-V mainfont="$mainfont" -V sansfont="$sansfont" -V monofont="$monofont" \
-V geometry=$geometry -V columns=$columns -V fontsize=$fontsize \
-V nohyphenation=$nohyphenation redis.md -o redisIt.pdf 
