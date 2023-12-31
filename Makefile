SHELL = bash
NAME = cp2223t

pdf:
	lhs2TeX $(NAME).lhs > $(NAME).tex
	pdflatex $(NAME).tex

quick:
	lhs2TeX $(NAME).lhs > $(NAME).tex
	pdflatex $(NAME).tex
	open $(NAME).pdf

full:
	lhs2TeX $(NAME).lhs > $(NAME).tex
	pdflatex $(NAME).tex
	bibtex $(NAME)
	makeindex $(NAME)
	pdflatex $(NAME).tex
	okular $(NAME).pdf

clean:
	rm -f $(NAME).tex $(NAME).out $(NAME).aux $(NAME).bbl $(NAME).blg $(NAME).log $(NAME).ptb
