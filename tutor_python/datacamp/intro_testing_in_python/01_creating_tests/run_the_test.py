#!/usr/bin/env python

import pytest

with open('hello_world.txt', 'a') as hello_file:
    hello_file.write("Hello, World!\n")

def multiple_of_two(number):
    try:
        if number == 0:
            raise ValueError("Input cannot be zero")
        result = number % 2 == 0
    except TypeError:
        raise ValueError("Input must be a number")
    return result

def test_multiple_of_two():
    # Test valid even number
    assert multiple_of_two(4) == True
    
    # Test valid odd number 
    assert multiple_of_two(3) == False
    
    # Test zero input
    with pytest.raises(ValueError, match="Input cannot be zero"):
        multiple_of_two(0)
    
    # Test non-numeric input
    with pytest.raises(ValueError, match="Input must be a number"):
        multiple_of_two("not a number")
    
    # Test negative numbers
    assert multiple_of_two(-4) == True
    assert multiple_of_two(-3) == False
    
    # Test floating point numbers
    with pytest.raises(ValueError, match="Input must be a number"):
        multiple_of_two(3.14)

def divide(a, b):
    if b == 0:
        raise ZeroDivisionError("Cannot divide by zero!")
    return a / b

def test_divide():
    with pytest.raises(ZeroDivisionError, match="Cannot divide by zero!"):
        divide(10, 0)
