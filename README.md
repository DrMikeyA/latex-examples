# Latex Samples

This repository contains a few latex samples I have snippeted when working on my CV.

Based on the skeleton here:[https://github.com/michaelmior/latex-skeleton](https://mg.readthedocs.io/latexmk.html "Michael Mior Latex Skeleton")

## Conditional On Environment Variable

`get_env_conditional.tex` - uses the value in an environment variable to display text or not.

`make get_env` builds it. `export TEST="Some Text"` to have the document display "Some Text". `unset TEST` to reset

Shamelessly taken from [The Great Stack Overflow...](https://tex.stackexchange.com/questions/286902/latex-if-condition)
