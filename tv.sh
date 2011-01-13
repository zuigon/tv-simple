#!/bin/bash
URL="http://tv.phazer.info/phazerbox/0/\&css\=http://tv.phazer.info/css/v3/tvprofil.css"
REGEX='(<div class=\"phrow|<div id=\"phtab_)'
wget -q -O- "$URL" | egrep "$REGEX" | ruby f.rb
echo OK
