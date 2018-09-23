#!/bin/bash
#takes gapminder and finds a country with maximum expectency
cut -f1,3,4 gapminder.txt | grep 2002 | sort -n -k3 | tail -n1 > High2.txt