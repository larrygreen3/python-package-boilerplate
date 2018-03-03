import os
import pytest
import sys

sys.path.append(os.path.join(os.path.dirname(__file__), ".."))

from PACKAGENAME import *

sys.path.append('')


def test_Package():
    assert(1 == 1)
