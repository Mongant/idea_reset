#!/bin/bash
#folder="~/.IntelliJIdea2018.2"

#rm -r "${HOME}/${folder}/config/eval"
#sed -i "/evlsprt/d" "${HOME}/${folder}/config/options/options.xml"
#sed -i "/evlsprt/d" "${HOME}/.java/.userPrefs/prefs.xml"

echo "removeing evaluation key"
rm -r ~/.IntelliJIdea2018.2/config/eval
echo "resetting evalsprt in options.xml"
sed -i '/evlsprt/d' ~/.IntelliJIdea2018.2/config/options/options.xml
echo "resetting evalsprt in prefs.xml"
sed -i '/evlsprt/d' ~/.java/.userPrefs/prefs.xml
echo "remove hidden files in ~/.java"
rm -rf ~/.java/.userPrefs/
echo 'done...\n'