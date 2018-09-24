options='-theme fatmenu'

selected=$(\
  cat font-awesome-icons.txt \
    | rofi -dmenu -i -markup-rows \
    ${options})

# exit if nothing is selected
[[ -z $selected ]] && exit

echo -ne $(echo "$selected" |\
  awk -F';' -v RS='>' '
    NR==2{sub("&#x","",$1);print "\\u" $1;exit}'
) |  xclip -selection clipboard
