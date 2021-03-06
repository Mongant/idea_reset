#!/bin/bash

## declare array of tools
declare -a tools=(
    "IntelliJIdea2018.2"
    "DataGrip2018.2"
    )

for tool in "${tools[@]}"
do
    echo "removing evaluation key for $tool"
    rm -rf ~/.$tool*/config/eval
    rm -rf ~/.java/.userPrefs/jetbrains/${tool,,}
done

for tool in "${tools[@]}"
do
    echo "resetting evalsprt in options.xml for $tool"
    sed -i '/evlsprt/d' ~/.$tool*/config/options/options.xml
done

echo "resetting evalsprt in prefs.xml"
sed -i '/evlsprt/d' ~/.java/.userPrefs/prefs.xml
rm -rf ~/.java/.userPrefs/

for tool in "${tools[@]}"
do
    echo "change date file for $tool"
    find ~/.$tool* -type d -exec touch -t $(date +"%Y%m%d%H%M") {} +;
    find ~/.$tool* -type f -exec touch -t $(date +"%Y%m%d%H%M") {} +;
done
