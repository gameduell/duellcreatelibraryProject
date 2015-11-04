#!/bin/sh
set -e

haxelib remove duell_sample || true >/dev/null 2>&1
rm -rf tmp

mkdir tmp
cd tmp
haxelib run duell_duell create libraryProject
cd libraryProject

haxelib dev duell_sample .

cd tests

haxelib run duell_duell update -yestoall
haxelib run duell_duell build html5 -test -verbose -D jenkins -yestoall
haxelib run duell_duell build android -test -verbose -D jenkins -yestoall -emulator -x86
haxelib run duell_duell build ios -test -verbose -D jenkins -yestoall


cd ../..
rm -rf tmp
haxelib remove duell_sample
