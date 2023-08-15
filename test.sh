#!/bin/bash
set -e

echo 'file_path.txt' | bash ./saam tag_name

[[ $(bash ./saam ls) == '*tag_name*' ]] || { echo "Tag not created"; }
[[ $(bash ./saam ls tag_name) == '*file_path.txt*' ]] || { echo "Tag contents not created"; }

bash ./saam rm tag_name
