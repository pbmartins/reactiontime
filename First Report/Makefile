
all: documento.pdf

documento.pdf: documento.tex bibliografia.bib
	pdflatex -shell-escape documento.tex
	biber documento
	pdflatex -shell-escape documento.tex
	pdflatex -shell-escape documento.tex

clean:
	rm -f *.aux *.blg *.bbl *.toc *.log *.lof *.lot *.log.xml *.bcf *.out *.run.xml
