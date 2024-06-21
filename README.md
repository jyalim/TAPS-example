TAPS example
============

1. Replace `export/Source/PEARC24-110.tex` with your own tex file
2. Replace `export/Source/references.bib` with your own bib file
2. Replace `export/Source/figs` with your own figures or remove
3. Update `export/Source/make.sh` with the correct `main` value
   (basename of your tex file).
4. From the `export/Source/` directory, run `./make.sh`
5. Review the new pdf in `export/pdf`. If changes need to be made,
   update the tex, bib, figure, other file(s) and go back to step 4.
6. Update the two variables at the top of `export/mkzip.sh` to reflect
   your proceedings and paper.
7. From the `export/` directory, run `export/mkzip.sh`. 
8. Upload the new zip to TAPS and wait for feedback.

Common TAPS rendering issues
----------------------------

* Make sure that your `\documentclass` options match what the conference
  requires. For instance, PEARC24 requires
  `\documentclass[sigconf]{acmart}`
* Make sure that your `bib` works with `natbib`. This is used by the
  included compiler.
* Make sure that you are using the right bibliography style. PEARC24
  requires `\bibliographystyle{ACM-Reference-Format}`.
* Don't stray too far with unsupported [ACM packages][packages].
  `newfloat` broke the compile for me.
* Make sure the acknowledgement section matches conference guidelines.
  For PEARC, use `\begin{acks}...\end{acks}` environment.


[packages]: https://authors.acm.org/proceedings/production-information/accepted-latex-packages 



