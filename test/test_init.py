import pytest

import mypackage


def test_version():
    mypackage.__version__


def test_foo():
    assert mypackage.foo() == "bar"
