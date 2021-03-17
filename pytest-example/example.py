def add(a, b):
    return a + b


def test_add():
    assert add(1, 2) == 3
    assert add('space', 'ship') == 'spaceship'
    assert abs(add(.1, .2) - 0.3) <  1.0e-7
