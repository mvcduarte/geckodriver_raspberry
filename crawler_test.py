#!/usr/bin/env python
# coding: utf-8

import time, datetime, platform, json, sys
import calendar

# Selenium

from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.action_chains import ActionChains
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.support.ui import WebDriverWait, Select
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium import webdriver

# Pandas and Numpy

import numpy as np
import pandas as pd

print('Start Browser')

# Firefox 

driver = webdriver.Firefox(executable_path = '/usr/local/bin/geckodriver')

driver.get('http://www.google.com.br/')

driver.close()

exit()
