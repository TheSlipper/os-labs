#!/bin/bash
sudo find /etc/ -type f -exec grep -iRl 'localhost$' {} \;
