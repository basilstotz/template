#!/bin/sh

export EMAIL="stotz@amxa.ch"
export DEBFULLNAME="Basil Stotz"


mkdir ${1}-1.0
cd ${1}-1.0
dh_make --createorig --indep

mkdir essentials
#mv debian/{changelog,compat,rules,control} essentials
cp debian/changelog essentials
cp debian/compat essentials
cp debian/rules essentials
cp debian/control essentials

mv debian debian.ori
mv essentials debian

