#!/bin/sh

BG0='#272E33ff'
BG1='#2E383Cff'
BG2='#374145ff'
BG3='#414B50ff'
BG4='#49515600'
BG5='#4F5B58ff'
BGG='#3C4841ff'
BGB='#384B55ff'
BGR='#4C3743ff'
FG='#D3C6AAff'
GREEN='#A7C080ff'
RED='#E67E80ff'
BLUE='#7FBBB3ff'

i3lock \
--insidever-color=$BGB     \
--ringver-color=$BLUE   \
\
--insidewrong-color=$BGR   \
--ringwrong-color=$RED     \
\
--inside-color=$BG0        \
--ring-color=$BG3        \
--line-color=$BG4          \
--separator-color=$BG4   \
\
--verif-color=$BLUE          \
--wrong-color=$RED	\
--time-color=$GREEN           \
--date-color=$FG           \
--layout-color=$BG5         \
--keyhl-color=$GREEN         \
--bshl-color=$BG5          \
\
--screen 1                   \
--blur 5                     \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%A, %Y-%m-%d"       \
--keylayout 1                \
