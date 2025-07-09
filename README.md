# EMES Template for Bachelor’s or Master’s Thesis
This template aims to give students a template for their bachelor's or master's thesis.

This template is brought to you by the
Laboratory for Electrical Instrumentation and Embedded Systems
at the Albert-Ludwigs-Universität in Freiburg

Please note: We do not provide technical support for this template.
However, please feel free to contribute to this template on GitHub:
https://github.com/imtekalex/emes_template

Authors: Alexander Richter, Till Steinmann, Andreas Reichenbach

### Building locally using docker
In case overleaf isn't available or you want to use a local environment(VSCode, Texstudio, ...),
you can use the docker image provided here.

1. build the image with `docker build -t emes-latex-builder .`
2. create a container, mount your working directory in the `/latex` folder of the container:

    `docker create -it -v <path_to_your_thesis>:/latex --name latex-builder emes-latex-builder` 
3. To compile the thesis run: `docker start -a latex-builder`

> [!TIP]  
> When using Texstudio input the command from step 3 as an user command under  
> Options -> Configure -> Build -> User Commands  
> You can then run it with `Alt + Shift + F1`

> [!WARNING]  
> The official Arial fonts can only be installed with some detour.
> Replacement fonts are installed in the container. Change the font
> in `settings+/settings.tex` to `Liberation Sans` or `Liberation Serif`.
> Otherwise you get compilation errors. See [wiki](https://en.wikipedia.org/wiki/Liberation_fonts) for details.

# ToDo:
- Centralize Language settings so that individual chapters are also built correctly.
- Speed up build process
- Cover: I would check the margins and the position of the seal and logo against the CD manual again, and the extra margin (BCOR?) on the left looks strange on the screen.
- Cover: At least in Chrome the colors of the Unilogo are displayed incorrectly, in Acrobat correctly.
- Cover: I find it unusual that the author's name is the smallest and about in the middle of the page. Suggestion: Name further up
- Cover: No typographic separation (other than font size) is unusual. Suggestion: "Master's Thesis" in italics, title in bold.
- Page numbering: the first three pages are also numbered in Arabic.
- The cover does not usually count towards the page numbering
- The (non-existent) title page would be page i.
- I am missing a title page or the title on p. 3
- P. 3: Centering seems unusual to me, since nothing is centered on the cover (or anywhere else).
- S. 3: I would prevent the breaks in the lab names.
- Symbols, etc.: The indentation of the first column compared to the table heading is "distracting".
- Figure Index, etc.: Indentation "interferes".
- It is at least unusual that there are no page numbers on the first pages of the chapters, although there is normal text. If text, then page number.
- The chapter name in the header on both pages is also unusual.
- Table 2.1: Table entries are not left-aligned only in exceptional cases.
- The bibliography is usually placed at the end.
- Bibliography: References to books always contain publisher and place.
- Bib.: DOI should be at the end without a period.
- Glossary: The spaces at "e.g." are inconsistent.
- Arabic page numbering usually continues to the end.
