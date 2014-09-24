PARTS=assignment.tex

all: clean assignment.pdf 

assignment.pdf: $(PARTS) 
	pdflatex -shell-escape assignment.tex
	pdflatex -shell-escape assignment.tex
	pdflatex -shell-escape assignment.tex

clean:
	rm -f *.log *.blg *.aux *.bbl *.4tc *.xref *.tmp *.dvi *.hd *.idx *.out *.toc *.drv *.ins *.pdf
	rm -rf ~*
	rm -rf *.tmp
	rm -rf *.4om
	rm -rf *~
