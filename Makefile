
all: rep_info archi html
	mkdir -p build/appr/media && cp build/latex/appr/rep_info.pdf build/appr/media/rep-info.pdf && cp build/latex/appr/archi.pdf build/appr/media/archi.pdf

archi:
	sphinx-build  -E -b latex -t archi src/appr  build/latex/appr && \
	cd build/latex/appr && pdflatex archi.tex

rep_info:
	sphinx-build  -E -b latex -t rep_info src/appr  build/latex/appr && \
	cd build/latex/appr && pdflatex rep_info.tex

pdf:
	sphinx-build  -E -b latex  src/appr  build/latex/appr && \
	cd build/latex/appr && pdflatex modulo2.tex

html:
	sphinx-build  -E -b html src/appr  build/appr
