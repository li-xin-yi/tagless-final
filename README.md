# tagless-final

[![stack](https://img.shields.io/static/v1?label=stack&message=2.3.1&color=informational&style=flat-square)](https://docs.haskellstack.org/en/stable/README/)
[![ghc](https://img.shields.io/static/v1?label=GHC&message=8.6.5&color=9370DB&style=flat-square)](https://www.haskell.org/ghc/)
[![iHaskell](https://img.shields.io/static/v1?label=iHaskell&message=0.10.1.1&color=acf&style=flat-square)](https://github.com/gibiansky/IHaskell)
[![jupyter](https://img.shields.io/static/v1?label=Jupyter-notebook&message=6.0.3&color=orange&style=flat-square)](https://jupyter.org/)
![license](https://img.shields.io/github/license/li-xin-yi/tagless-final?style=flat-square)

Implement attempts for typed tagless-final interpreters


## References

1. [Typed Tagless-Final Interpretations: Introductory Course](http://okmij.org/ftp/tagless-final/course/index.html)
2. Kiselyov, Oleg. "[Typed tagless final interpreters.](http://okmij.org/ftp/tagless-final/course/lecture.pdf)" *Generic and Indexed Programming. Springer*, Berlin, Heidelberg, 2012. 130-174.
3. [CodeWars: Finally tagless interpreter](https://www.codewars.com/kata/5424e3bc430ca2e577000048)
4. 

## Build

Install some depencies:

```
$ sudo apt-get install libtinfo-dev libzmq3-dev libcairo2-dev libpango1.0-dev libmagic-dev libblas-dev liblapack-dev
```

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

Install [IHaskell](https://github.com/gibiansky/IHaskell) using `stack`(if you haven't installed `stack` yet, try `curl -sSL https://get.haskellstack.org/ | sh` and **do not install any new `ghc`** after installing `stack`): 

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

Open http://localhost:3040/ with your favorite browser and try to run all codes!

If your `stack`, `Jupyter` and `IHaskell` are installed in a remote server (like what I do): on the server, you can run 

```
$ screen -S tagless
```

Start a subscreen named `tagless`, and run all command above on this subscreen, then exit by <kbd>Ctrl</kbd> + <kbd>A</kbd> + <kbd>D</kbd> to make the Jupyter server run in background. You can recover the screen by:

```
$ screen -r tagless
```

At any time.

Now, you can access the notebook from your local machine by

```
$ ssh -N -f -L localhost:3040:localhost:3040 <username>@<server-name>
```

and open http://localhost:3040/.
