#!/bin/bash

echo "HEllo :)" > file.txt

nc server 8000 < file.txt
