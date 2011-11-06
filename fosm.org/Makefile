# use this to process and produce the html
all :
	xsltproc  home.xsl  index.xml  > index.html

tidy :	
	tidy index.html -o index_tidy.html -f index_tidy.err