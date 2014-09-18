---
layout: post
title: "Robot Framework"
tags: robot-framework
permalink: robot-framework
---

## [Robot Framework(RF)](http://robotframework.org/) - [Github Repo](https://github.com/robotframework/robotframework)

## [Handling whitespace - Plain text format](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#rules-for-parsing-the-data)
-  1 tab   = 2 space
-  1 space - between command
-  2+ space - between command and argument (recommend 4 space)

-  Newlines, carriage returns, and tabs are converted to spaces.

### [Special characters need Escaping special characters](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#rules-for-parsing-the-data)
-  Newlines             - \n
-  carriage returns     - \r
-  tabs                 - \t
-  non-breaking spaces  - \xA0

### Continue line the previous line

```python
# use ellipsis (...) to continue the previous line
Default Tags	a	b	c
...	          d	e	f
```

## [Test templates - keyword-driven test cases into data-driven tests](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#test-templates)


## RF file formats:
- HTML format
- TSV format
- Plain text format
- reStructuredText format

support only .html, .xhtml, .htm, .tsv, .txt, .rst, or .rest file in dir


## Test case styles:
- Keyword-driven style
- Data-driven style
- Behavior-driven style ( Give When Then )


## [Integer Variables (Default is String)](http://stackoverflow.com/questions/24007245/different-type-of-input-data-between-robot-framework-file-and-python/24007809#24007809)

```python
${THRESHOLD}      ${65} # 65 is integer
${THRESHOLD}      65    # 65 is string
```

## [Selecting test cases](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#selecting-test-cases)

```sh
--test example*       #select test
--suite example-??    #select suite
```


## Robot Framework Template
```python
*** Settings ***
Documentation     <document>
Library           <Library>
Library           <python pakcage>  WITH NAME  <ref name>
Resource          <file>

Suite Setup       <keyword>
Suite Teardown    <keyword>

Test Setup        <keyword>
Test Teardown     <keyword>

*** Test Cases ***
<test name>
  <command> or <keyword>

*** Keywords ***
<command>
  [Arguments]  ${variable}
  ${variable} =  <command>  ${variable}
  [Return]  ${variable}
```

## Plugin:
1. [Vim plugins for development with Robot framework](https://github.com/mfukar/robotframework-vim)

## Documents:
1. [Robot Framework Quick Start Guide](http://robotframework.googlecode.com/hg/doc/quickstart/quickstart.html)
2. [RobotFramework Overview](http://www.virtuousprogrammer.com/?p=264)
3. [Robot Framework User Guide](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
4. [HowToWriteGoodTestCases](https://code.google.com/p/robotframework/wiki/HowToWriteGoodTestCases)

## Demo:
1. [RobotDemo - Python Calculator](https://bitbucket.org/robotframework/robotdemo/src/0f996d178905?at=master)
2. [Acceptance Test Driven Development with Robot Framework](https://code.google.com/p/atdd-with-robot-framework/)
3. [Robot Framework Demo](https://bitbucket.org/robotframework)

## References:
2. [Robot Framework Keywords](http://stackoverflow.com/questions/19648439/robot-framework-keywords)
3. [Write testable documentation with Robot Framework](http://datakurre.pandala.org/2013/08/write-testable-documentation-with-robot.html)
4. [how can I return results in Robot Framework keyword?](http://stackoverflow.com/questions/7580252/how-can-i-return-results-in-robot-framework-keyword)
6. [Creating user keywords](http://code.google.com/p/robotframework/source/browse/doc/userguide/src/CreatingTestData/CreatingUserKeywords.txt?r=e35c4cf7591986d212a6f1c015f2f77598fb7ea2)
7. [Getting started with Robot Framework and plone.app.testing](http://datakurre.pandala.org/2012/09/getting-started-with-robotframework-and.html)
9. [RobotFramework with the Selenium Library](http://www.wallix.org/2011/07/26/how-to-use-robotframework-with-the-selenium-library/) - [Part2](http://www.wallix.org/2011/09/06/how-to-use-robotframework-part-2/)

