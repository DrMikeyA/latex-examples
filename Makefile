# http://tex.stackexchange.com/a/40759
# You want latexmk to *always* run, because make does not have all the info.
# Also, include non-file targets in .PHONY so they are run regardless of any
# file of the given name existing.
.PHONY: paper.pdf get_env_true.pdf get_env_false.pdf all clean

# The first rule in a Makefile is the one executed by default ("make"). It
# should always be the "all" rule, so that "make" and "make all" are identical.
all: paper.pdf get_env_true.pdf get_env_false.pdf

# MAIN LATEXMK RULE

# -pdf tells latexmk to generate PDF directly (instead of DVI).
# -pdflatex="" tells latexmk to call a specific backend with specific options.
# -use-make tells latexmk to call make for generating missing files.

# -interactive=nonstopmode keeps the pdflatex backend from stopping at a
# missing file reference and interactively asking you for an alternative.

paper.pdf: paper.tex paper.bib
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make paper.tex

get_env_true.pdf: get_env.tex paper.bib
	TEST="This is an awesome test" latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make get_env.tex

get_env_false.pdf: get_env.tex paper.bib
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make get_env.tex

clean:
	latexmk -CA
