#!/bin/bash
tr -cs '[:alpha:]' '\n' < $1 > $2
