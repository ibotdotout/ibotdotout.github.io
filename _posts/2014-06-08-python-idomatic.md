---
layout: post
title: "Idiomatic Python"
tags: python
permalink: python
---

If you wanna be Pythonic try to look at this references.

### Tips:
* Run All untidiest in folder:  

  ```sh
  python -m unittest discover <tests_module>
  ```
* Zen of Python :: run this command in python console

  ```python
  import this
  ```
* Virtualenv with system package

  ```sh
   virtualenv --system-site-packages <env_name>
  ```
* Install py package into python2

  ```sh
  pip install <package>
  ```
* Install py package into python3

  ```sh
  pip3 install <package>
  ```

## Tools:
* Unittests: [Nosetests](https://nose.readthedocs.org), [Rednose](https://pypi.python.org/pypi/rednose), [Coverage](https://pypi.python.org/pypi/coverage)

  ```sh
  pip install nose rednose coverage
  ```
* [Virtualenv](http://virtualenv.readthedocs.org)

  ```sh
  pip install virtualenv
  ```

  Or

  ```sh
  brew install pyenv-virtualenv
  ```
* [VirtualenvWrapper](http://virtualenvwrapper.readthedocs.org)

  ```sh
  pip install virtualenvwrapper
  ```
  add this into your .bashrc/.zshrc

  ```sh
  export WORKON_HOME=<env_path>
  source /usr/local/bin/virtualenvwrapper.sh
  ```
* [Observr (Ruby)](https://github.com/kevinburke/observr)  
  For OS X

  ```sh
  gem install observr
  gem install ruby-fsevent
  ```

## Reference:
1. [What is Pythonic?](http://blog.startifact.com/posts/older/what-is-pythonic.html)
2. [Be Pythonic](http://www.cafepy.com/article/be_pythonic/)
3. [Python track: python idioms](http://courses.cms.caltech.edu/cs11/material/python/misc/python_idioms.html)
4. [Code Like a Pythonista: Idiomatic Python](http://python.net/~goodger/projects/pycon/2007/idiomatic/handout.html)
5. [PEP8](http://legacy.python.org/dev/peps/pep-0008/)
6. [The Hitchhiker’s Guide to Python!](http://docs.python-guide.org/en/latest/)
7. [Python Koans](http://github.com/gregmalcolm/python_koans)
8. [New Coder Python](http://newcoder.io)

## Design Patterns Python:
1. [Python Patterns](https://github.com/faif/python-patterns)
2. [Six GoF design patterns, Python style](http://ginstrom.com/scribbles/2007/10/08/design-patterns-python-style/)
3. [Generic adapter class in Python](http://ginstrom.com/scribbles/2008/11/06/generic-adapter-class-in-python/)
4. [Bridge Patterns Python](http://en.wikibooks.org/wiki/Computer_Science_Design_Patterns/Bridge_Pattern#Python)


