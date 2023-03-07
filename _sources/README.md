# coalgebraic-logic-jupyter

(under construction)

## coalgebraic logic

This is the repo in which I keep [my notes on coalgebraic logic](https://alexhkurz.github.io/coalgebraic-logic-jupyter).

I wanted to turn them into something that looks more like a book and I tried various frameworks (gitbook, mdbook, bookdown, honkit) but they all had various problems, in particular when it came to latex. 

So far, jupyter-book seems to work well [^slow] and the next section contains a summary of how I set it up (but the available documentation works almost out of the box anyway).

[^slow]: Maybe building is a bit slow. On the other hand, once the files are cached, compiling the book in the terminal with `jb build . ; open _build/html/index.html` does not take longer than doing it directly in TeX.

## how to create a jupyter book

Starting from [Create your first book](https://jupyterbook.org/en/stable/start/your-first-book.html) the following steps were taken.

### basics

After creating this repo, cloning it (assume it is called `root` locally), I run the following from the commandline in the folder containing `root`.

```
pip install -U jupyter-book
jupyter-book create book
mv book/* root
cd root
jupyter-book build .
```

The book can now be opened in a browser by opening the file `_build/html/index.html`. On a mac, simply run `open _build/html/index.html`

Following [Math and equations](https://jupyterbook.org/en/stable/content/math.html#math-and-equations) add to `_config.yml`

```
parse:
  myst_enable_extensions:
    # don't forget to list any other extensions you want enabled,
    # including those that are enabled by default!
    - amsmath
    - dollarmath
```

Adapt `_config.yml` and `_toc.yml`. Add your own files. Go through several iterations of 

```
jupyter-book build .
open _build/html/index.html
```

Before committing and pushing to git, I downloaded a `.gitignore`:

```
curl https://raw.githubusercontent.com/executablebooks/jupyter-book/master/.gitignore > .gitignore
```

### publish on the web

Following [Publish your book online](https://jupyterbook.org/en/stable/start/publish.html) install `ghp-import` with
`pip install ghp-import` and then publish the book by running

```
ghp-import -n -p -f _build/html
```

This makes the [book available online](https://alexhkurz.github.io/coalgebraic-logic-jupyter). It also keeps the source files in the `main`-branch separate from the html-files in `_build` in the `gh-pages` branch.

### create a pdf

Following [Build a PDF](https://jupyterbook.org/en/stable/advanced/pdf.html), first run `pip install pyppeteer` once to install `pyppeteer`. Then build the pdf with

```
jb build . --builder pdfhtml
```

### important commands

If, for example, the table of contents in the left-hand pane behaves in a strange way, clean out `_build`:

```
jupyter-book clean .
```
