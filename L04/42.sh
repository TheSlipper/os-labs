#!/bin/bash
clear
echo Phrase 127.0.0 found in: $(grep -rH '127.0.0' | cut -d: -f1)
echo Phrase 127.0.0 not found in: $(grep -rL '127.0.0' | cut -d: -f1)
echo Phrase smtp found in services at lines: $(grep -n 'smtp' services | cut -f1)
echo Slowo smtp wystapilo w pliku services: $(grep -n 'smtp' services | wc -l) razy
echo Slowo FTP wystapilo w pliku services $(grep -n '/<ftp/>' services | wc -l) razy
echo $(cat -s -n hosts)
