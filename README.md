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
- Cover: I find it unusual that the author's name is the smallest and about in the middle of the page. Suggestion: Name further up
- Cover: No typographic separation (other than font size) is unusual. Suggestion: "Master's Thesis" in italics, title in bold.
- Declaration: I am missing a title page or the title on p. 3, the (non-existent) title page would be page i.
- Declaration: Centering seems unusual to me, since nothing is centered on the cover (or anywhere else).
- Declaration: I would prevent the breaks in the lab names.
- Headers: Unusual that there are no page numbers on the first pages of the chapters. If text, then page number.
- Headers: The chapter name in the header on both pages is also unusual.
- Bibliography: The bibliography is usually placed at the end.
- Bibliography: References to books always contain the publisher and place.
- Bibliography: DOI should be at the end without a period.
- Glossary: The spaces at "e.g." are inconsistent.
- Glossary: Arabic page numbering usually continues to the end.
  
# Feature suggestion:
- Centralize Language settings so that individual chapters are also built correctly.
