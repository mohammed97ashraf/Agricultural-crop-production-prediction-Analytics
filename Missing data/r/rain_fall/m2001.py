#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Tue Jan 30 15:12:36 2018

@author: ashraf
"""

import pandas as pd
from pandas import ExcelWriter
from pandas import ExcelFile

df = pd.read_excel('File.xlsx', sheetname='Sheet1')