all: blob.pdf

blob.pdf: *.tex Narrative/*.tex
	pdflatex -interaction=nonstopmode blob.tex
	bibtex blob
	pdflatex -interaction=nonstopmode blob.tex
	pdflatex -interaction=nonstopmode blob.tex

.PHONY:
clean:
	rm -f *aux *toc *bbl *log *out *blg blob.pdf
