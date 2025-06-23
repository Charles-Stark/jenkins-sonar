import pytest
from app import add, subtract, multiply, divide


def test_add():
    assert add(2, 3) == 5


def test_add_2():
    assert add(-3, 67) == 64


def test_add_3():
    assert add(1, 1) == 2


def test_substract():
    assert subtract(3, 1) == 2


def test_multiply():
    assert multiply(9, 8) == 72


def test_divide():
    assert divide(9, 3) == 3


def test_divide_zero():
    with pytest.raises(ZeroDivisionError):
        divide(9, 0)
