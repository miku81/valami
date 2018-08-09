#!/bin/bash
wget https://finance.yahoo.com/currencies -q -O - | grep '"EURUSD=X":{"sourceInterval":15' | sed -e 's/.*\"EURUSD\=X\"\:{\"sourceInterval\"\:15\(.*\)"},"regularMarketVolume":.*/\1/' | sed -e 's/.*"regularMarketPrice":{"raw":\(.*\),"fmt":".*/\1/'
