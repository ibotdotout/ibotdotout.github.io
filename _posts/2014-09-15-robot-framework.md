---
layout: post
title: "Robot Framework"
tags: robot-framework
permalink: robot-framework
---

## [Robot Framework](http://robotframework.org/) - [Github Repo](https://github.com/robotframework/robotframework)

## Space
-  1 space - between command
-  2 space - between command and argument


### [Integer Variables (Default is String)](http://stackoverflow.com/questions/24007245/different-type-of-input-data-between-robot-framework-file-and-python/24007809#24007809)

```python
${THRESHOLD}      ${65} # 65 is integer
${THRESHOLD}      65    # 65 is string
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

## References:
1. [RobotDemo - Python Calculator](https://bitbucket.org/robotframework/robotdemo/src/0f996d178905?at=master)
2. [Robot Framework Keywords](http://stackoverflow.com/questions/19648439/robot-framework-keywords)
3. [Write testable documentation with Robot Framework](Write testable documentation with Robot Framework)
4. [how can I return results in Robot Framework keyword?](http://stackoverflow.com/questions/7580252/how-can-i-return-results-in-robot-framework-keyword)
5. [Robot Framework User Guide](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
6. [Creating user keywords](http://code.google.com/p/robotframework/source/browse/doc/userguide/src/CreatingTestData/CreatingUserKeywords.txt?r=e35c4cf7591986d212a6f1c015f2f77598fb7ea2)
7. [Getting started with Robot Framework and plone.app.testing](http://datakurre.pandala.org/2012/09/getting-started-with-robotframework-and.html)
8. [HowToWriteGoodTestCases](https://code.google.com/p/robotframework/wiki/HowToWriteGoodTestCases)
9. [RobotFramework with the Selenium Library](http://www.wallix.org/2011/07/26/how-to-use-robotframework-with-the-selenium-library/) - [Part2](http://www.wallix.org/2011/09/06/how-to-use-robotframework-part-2/)
