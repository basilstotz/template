#!/bin/sh
cd ${1}-1.0
dpkg-buildpackage -uc -tc
