# Created by Group 4
# Project - Organic Avocado Optimization

# Sets 
set K; # constraint agency k

# Variables
var x{K, K}>=0;

# Parameters
param cx{K};
param cy{K};
param s{K};
param d{K};

# Objective Function
minimize cost: sum{i in K} sum{j in K} (5*sqrt((cx[j]-cx[i])^2 + (cy[j]-cy[i])^2)*x[i,j]);

# Constraints
subj to constraint1{k in K}:
	s[k] + sum{i in K} x[i,k] - sum{j in K} x[k,j] - d[k] >= 0;