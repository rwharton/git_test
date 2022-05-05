
PAPER = ms
.DEFAULT_GOAL := all

all:
	pdflatex $(PAPER)
	open $(PAPER).pdf

more:
	pdflatex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)
	open $(PAPER).pdf

clean:
	@rm -f *.aux || :
	@rm -f *.dvi || :
	@rm -f *.out || :
	@rm -f *.log || :
	@rm -f *.bbl || :
	@rm -f *.blg || :
	@rm -f *.backup || :
	@rm -f *~ || :
