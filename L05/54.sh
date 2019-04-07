#!/bin/bash
find . -type f -exec wc -l {} \; | grep "^4 "
