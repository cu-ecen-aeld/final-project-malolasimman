#!/bin/bash
#Script clean buildroot
#Author: Malola Simman

set -e 
cd `dirname $0`
cd buildroot
make distclean
