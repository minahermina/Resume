# Makefile for compiling LaTeX resume

# The main tex file
MAIN = Mina-Hermina-CV

# Default target
all: $(MAIN).pdf

# Compile the tex file to pdf
$(MAIN).pdf: $(MAIN).tex
	pdflatex $(MAIN).tex

# Clean auxiliary files but keep the PDF
clean:
	latexmk -c

.PHONY: all clean
