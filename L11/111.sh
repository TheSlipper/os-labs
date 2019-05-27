#!/bin/bash
echo -n "Lancuch poczatkowy: "
echo $@
echo -n "Lancuch koncowy: "
echo $@ | rev
exit 0
