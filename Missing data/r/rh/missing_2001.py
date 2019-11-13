#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Tue Jan 30 01:56:13 2018

@author: ashraf
"""

# Data Preprocessing

# Importing the libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# Importing the dataset
dataset = pd.read_csv('2001.csv')
X = dataset.iloc[:, :-1].values


# Taking care of missing data
# Taking care of missing data
from sklearn.preprocessing import Imputer
imputer = Imputer(missing_values = 'NaN', strategy = 'mean', axis = 0)
imputer = imputer.fit(X[:, 2:14])
X[:, 2:14] = imputer.transform(X[:, 2:14])



a = dataset[:,2:13]