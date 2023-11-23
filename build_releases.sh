#!/usr/bin/bash

out_path=../releases/$(date +'%Y%m%d.%H.%M.%S')
godot="./bin/godot.windows.editor.dev.x86_64.exe"

#unit tests

#Release
export_path="${out_path}"
absolute_path=$(readlink -m "$export_path")

if [ -d "${absolute_path}" ]; then
    # If it exists, delete it
	rm -r ${absolute_path}
fi

mkdir -p ${absolute_path}/debug_debug
mkdir -p ${absolute_path}/debug_release

${godot}  --path "../game/pumpkin_colony_game"  --export-release "Windows_x86_64_debug" ${absolute_path}/debug_debug/game.exe   --display-driver 'headless'
${godot}  --path "../game/pumpkin_colony_game"  --export-debug   "Windows_x86_64_debug" ${absolute_path}/debug_release/game.exe --display-driver 'headless'
