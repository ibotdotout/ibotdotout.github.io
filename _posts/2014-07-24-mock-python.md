---
layout: post
title: Mock
tags: python
permalink: mock
---

## [Mock - Mocking and Testing Library](http://www.voidspace.org.uk/python/mock/)
If you mock some thing, it can't be runnable. Don't forget it just mock object.  

### Mock Method that can be runnable

```python
# side_effect will make mock method can be runable  
# this can be use to reutrn_value in different arguments
>>> mock_method = mock.Mock()  
>>> mock_method.side_effect = lambda x: x + 1  
>>> mock_method(1)
2
>>> mock_method(2)
3
```

### Patch Module Attribute

```python
# Using PropertyMock with return_value argument  

>>> with mock.patch('package.module.attribute',  
                     new_callable=mock.PropertyMock(return_value=3))
                     as mock_attribute:  
>>>       print(mock_attribte)  
>>>       print(package.module.attribute)  
3  
3  
```

### Reference:
1. [The Mock Class](http://www.voidspace.org.uk/python/mock/mock.html)
