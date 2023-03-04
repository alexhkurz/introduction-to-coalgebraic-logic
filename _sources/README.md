# coalgebraic-logic-jupyter

## how to create a jupyter book

Starting from [Create your first book](https://jupyterbook.org/en/stable/start/your-first-book.html)

After creating this repo, cloning it (assuming it is called `root` locally), I run the following from the commandline in the folder containing `root`.

```
pip install -U jupyter-book
jupyter-book create book
mv book/* root
cd root
jupyter-book build .
```

The book can now be opened in a browser by opening the file `_build/html/index.html`. On a mac, simply run `open _build/html/index.html`

Adapt `_config.yml` and `_toc.yml`.



```
curl https://raw.githubusercontent.com/executablebooks/jupyter-book/master/.gitignore > .gitignore
```


Going up to root again, run

```
jupyter-book build book
```

and open the book (I am on a mac) with `open book/_build/html/index.html` in my default browser.

Following [Math and equations](https://jupyterbook.org/en/stable/content/math.html#math-and-equations) add to `_config.yml`

```
parse:
  myst_enable_extensions:
    # don't forget to list any other extensions you want enabled,
    # including those that are enabled by default!
    - amsmath
    - dollarmath
```

