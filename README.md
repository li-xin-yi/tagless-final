# tagless-final

Implement attempts for typed tagless-final interpreters


## References

1. [Typed Tagless-Final Interpretations: Introductory Course](http://okmij.org/ftp/tagless-final/course/index.html)
2. Kiselyov, Oleg. "[Typed tagless final interpreters.](http://okmij.org/ftp/tagless-final/course/lecture.pdf)" *Generic and Indexed Programming. Springer*, Berlin, Heidelberg, 2012. 130-174.

## Build

Create a new `conda` environment named `tagless` and activate it:

```
$ conda create -n tagless python=3.7
$ conda activate tagless
```

Install Jupyter notebook and its extensions:

```
$ pip install notebook
$ pip install jupyter_contrib_nbextensions
$ pip install jupytext
```

Install [IHaskell](https://github.com/gibiansky/IHaskell) using `stack`:

```
$ git clone https://github.com/gibiansky/IHaskell
$ cd IHaskell
$ pip install -r requirements.txt
$ stack install --allow-different-user --fast
$ ihaskell install --stack
```

Clone this repository and enter:

```
$ git clone https://github.com/li-xin-yi/tagless-final
$ cd tagless-final
```

Start a Jupyter notebook server:

```
$ stack exec jupyter -- notebook --config=config.py
```

