#!/bin/sh
set -e

rm -rf tests
mkdir tests
cd tests
haxelib run duell_duell create libraryProject

haxelib run duell_duell build android -test -verbose -D jenkins -yestoall -emulator -x86
haxelib run duell_duell build ios -test -verbose -D jenkins -yestoall
haxelib run duell_duell build html5 -test -verbose -D jenkins -yestoall
haxelib run duell_duell build flash -test -verbose -D jenkins -yestoall

cd ..
rm -rf tests
