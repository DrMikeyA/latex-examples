# Latex Samples

This repository contains a few latex samples (OK... sample... ) I snipped when working on my CV.

Based on the skeleton here:[https://github.com/michaelmior/latex-skeleton](https://mg.readthedocs.io/latexmk.html "Michael Mior Latex Skeleton")

## Conditional On Environment Variable

`get_env.tex` - uses the value in an environment variable to display text or not.

`make get_env_true.pdf` builds `get_env.pdf` with conditional text.
`make get_env_false.pdf` builds `get_env_pdf` without conditional text.

The recipe does `export TEST="Some Text"` to have the document display "Some Text".

Shamelessly taken from [The Great Stack Overflow...](https://tex.stackexchange.com/questions/286902/latex-if-condition)
