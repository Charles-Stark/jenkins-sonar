from app import add


def test_add():
    assert add(2, 3) == 5


def test_add_2():
    assert add(-3, 67) == 64


def test_add_3():
    assert add(1, 1) == 3
