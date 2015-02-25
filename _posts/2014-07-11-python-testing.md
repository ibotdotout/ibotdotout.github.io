---
layout: post
title: "Python Testing"
tags: python
permalink: python-testing
---

There are difference between 'building it right' and 'building the right thing'. -Python Testing Cookbook by Greg L. Turnquist


##Good Test Habits
* A few test is better than nothing  
* Coverage isn't everything  
  - make working software not a 100% coverage
* Capturing a bug in an automated test  
  1. Write Tests for the bug  
  2. Add it to your test suite  
  3. Fix the bug  
  4. Veriry test suite passed  
  
* Testing Concept
  1. AAA - Arrange Act Assert  
  2. BDD - Give When Then  


## Tips:

* Run All unittest in module:

  ```sh
  python -m unittest discover <test_module>
  ```
* Run nosetests with python3.  
  - Install nose into python3 package with pip3 then you can run nosetests with python3 via nosetests-3.x ex. nosetests-3.4 if your python3 is version 3.4

  ```sh
  pip3 install nose
  nosetests-3.x
  ```
* [Problems using nose in a virtualenv](http://stackoverflow.com/questions/864956/problems-using-nose-in-a-virtualenv)

  you can't run nose in system-packages to using packages in virtualenv (sandbox)
  
* Run PDB with nosetest:

  ```python
  from nose.tools import set_trace; set_trace()
  ```
  
##[Nose Multiprocess](http://nose.readthedocs.org/en/latest/plugins/multiprocess.html)

You should make unittest run faster with mocking better than using multi processes.  
There are many problem with nose plugin ex. rednose, coverage, xunit.  

In worst case more processeses can make your tests slower depends on your tests.  

```sh
$ nosetests --processes=NUMBER_OF_PROCESSORS --process-timeout <sec>
```

[Plugin Problem](http://www.metaklass.org/nose-accelerating-the-runner/):  
1. Rednose - disable rednose by remove --rednose option and NOSE_REDNOSE in enviorment variable  
2. coverage - fix by [nose-cov](https://pypi.python.org/pypi/nose-cov)  
3. xunit - fix by [nose_xunitmp](https://pypi.python.org/pypi/nose_xunitmp/0.2)  

##Test Coverage

Stmts - statements  
Miss - statements that not executed  
Cover - (Stmts - Miss)/Stmts * 100  

* Coverage html  
  - Generate an Pretty HTML report  
  - powerful way to visually inspect the code and see the lines that missing  

  ```sh
  nosetests --with-coverage --cover-html 
  ```
* Coverage erase

  ```sh
  coverage erase
  coverage -e
  nosetests --with-coverage --cover-erase
  ```
* Coverage with filter Third-party Libraries out

  ```sh
  nosetests --with-coverage --cover-package=<package,package2>
  nosetests --with-coverage --cover-package=$(ls | grep '.py$' | sed 's/[.]py$//' | xargs | sed 's/[\ ]/,/g')
  ```


## Mock

* mocking pattern  
  1.record/replay pattern  
  2.action/assert pattern 
* mock tests behavior  
  - test the method was called or not called by assert_called_with(), etc.  
* stubs tests state  
  - recording method class and its result  


##Behavior Driven Development

* BDD - Given, When, and Then
* BDD Stroy  
  -Feature  
  -- Scenario  
  --- steps  

* TDD vs BDD  
  - setUp   ==  Given  
  - call unit ==  Then  
  - assert    ==   When  

* [Lettuce](http://lettuce.it) is a Cucumber-like BDD tool built for Python.


## [Robot Framework - Acceptance Testing](https://github.com/robotframework/robotframework) 
* Acceptance testing is block box testing
* Customers are usually more interested in what the software does, not how it does it.  
* Robot Framework uses keywords to define tests, test steps, variables, and other testing components and need to maps Robot Framework keywords to our Python code  
* Robot Framework uses data-driven test suite  


## Jekin(Java) - Continuous Integration
* nosetests --with-xunit
* tests upon commit(trigger),when scheduled


## Tools:
  * Unittests: [Nosetests](https://nose.readthedocs.org), [Rednose](https://pypi.python.org/pypi/rednose), [Coverage](https://pypi.python.org/pypi/coverage)

  ```sh
  pip install nose rednose coverage
  echo "export NOSE_REDNOSE=1" >> .zshrc #enable rednose
  ```
  * [Watchdog](https://github.com/gorakhargosh/watchdog) - 
  [Watching a directory for file changes](http://brunorocha.org/python/watching-a-directory-for-file-changes-with-python.html)  

  ```sh
  pip install watchdog
  ```
  
  * [Tox](https://testrun.org/tox/latest/) - multiple environments testing

  ```sh
  pip install tox
  ```

## Testing Python
1. [Python Testing Start Here](http://pythontesting.net/start-here/)
2. [Testing in Python: using nose & mocks](http://techblog.appnexus.com/2012/testing-in-python-using-nose-mocks/)
3. [Mock - Mocking and Testing Library](http://www.voidspace.org.uk/python/mock/)
4. [An Introduction to Mocking in Python](http://www.toptal.com/python/an-introduction-to-mocking-in-python)
5. [INTRODUCING BDD](http://dannorth.net/introducing-bdd./)
6. [Mock Like a Boss](http://slidedeck.io/oxtopus/mocklikeaboss)
7. [Beginning Test-Driven Development in Python](http://code.tutsplus.com/tutorials/beginning-test-driven-development-in-python--net-30137)
8. [Behavior-Driven Development in Python](http://code.tutsplus.com/tutorials/behavior-driven-development-in-python--net-26547)
9. [Testing with mock](http://pyvideo.org/video/392/pycon-2011--testing-with-mock)
10. [Unit testing best practices](http://www.slideshare.net/nickokiss/unit-testing-best-practices)
11. [Software Testing Course](https://www.udacity.com/course/cs258)
12. [Patching Mocks in Python](http://www.drdobbs.com/architecture-and-design/patching-mocks-in-python/240168924)
13. [Python Nose: Speed up the runner](http://www.metaklass.org/nose-accelerating-the-runner/)
14. [Beginning Test-Driven Development in Python](http://code.tutsplus.com/tutorials/beginning-test-driven-development-in-python--net-30137)
