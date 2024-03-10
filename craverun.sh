#!/bin/bash
rm -rf crave_rom_builder
git clone https://$GH_TOKEN@github.com/Assunzain/crave_rom_builder.git
cp -f crave_rom_builder/pull.sh pull.sh
chmod +x pull.sh
crave run --no-patch  -- "          #© crave.io Inc. 2017-2024
              #Thanks to UV n Team
        #no dual account just to build faster
              #respect the rule
repo init -u https://github.com/ProjectMatrixx/android.git -b 14.0 --git-lfs
rm -rf .repo/local_manifests prebuilts/clang/host/linux-x86 prebuilts/rust .repo/local_manifest
git clone https://github.com/Assunzain/local_manifest -b Matrixx .repo/local_manifests
repo sync -c -j\$(nproc --all) --force-sync --no-clone-bundle --no-tags
 
source build/envsetup.sh
m installclean
lunch lineage_X01AD-userdebug
m bacon
"
. pull.sh
