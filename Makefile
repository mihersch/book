all: pdf html
	mkdir -p build/appr/media && cp build/latex/appr/modulo2.pdf build/appr/media/rep-info.pdf

pdf: 
	sphinx-build  -E -b latex src/appr  build/latex/appr && \
	cd build/latex/appr && pdflatex modulo2.tex

html:
	sphinx-build  -E -b html src/appr  build/appr
