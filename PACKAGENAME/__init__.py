# ------------------------------
# Imports
# ------------------------------
from configparser import ConfigParser
from os.path import abspath, join, dirname


# ------------------------------
# Configuration
# ------------------------------
config = ConfigParser()
config.read(join(dirname(abspath(__file__)), 'config.ini'))
