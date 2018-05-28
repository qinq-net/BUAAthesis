qin:
	xelatex QIN.tex
	-biber QIN
	xelatex QIN.tex
	xelatex QIN.tex
qin-spine:
	uplatex QIN-spine.tex && dvipdfmx QIN-spine.dvi
all: qin qin-spine
bachelor:
	xelatex sample-bachelor.tex
	-bibtex  sample-bachelor.aux
	xelatex sample-bachelor.tex
	xelatex sample-bachelor.tex
master:
	xelatex sample-master.tex
	-bibtex  sample-master.aux
	xelatex sample-master.tex
	xelatex sample-master.tex
clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm *.bcf *.run.xml
depclean: clean
	rm -rf *.pdf *.dvi
