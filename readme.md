# Document Writing

This is a minimal and working setup of using Markdown and Pandoc for writing a material (for ex, a book) and export it as PDF, Epub, and Word(.docx).



<br/>

## Setup

As prerequisites, the followings are needed:

- `pandoc`
  You may use either what comes with your package manager, or get the latest version from [here](https://pandoc.org/installing.html).
- `pdflatex`
  For an Ubuntu distro, use `sudo apt install texlive-latex-base texlive-latex-extra`.



<br/>

## Usage

Run `make all` to export in all three formats. 

Check out [Makefile](./Makefile) for details.

<br/>
