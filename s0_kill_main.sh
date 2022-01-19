#!/bin/bash
ps -ef | grep main.py | awk '{print $2}' | xargs kill -9