#!/bin/bash

BASEKEY_LOC="C:\Users\Cory\Desktop\Resources\Decompiled\nwn_base.key"
RETAILKEY_LOC="C:\Users\Cory\Desktop\Resources\Decompiled\nwn_retail.key"

mkdir -p $BASEKEY_LOC
mkdir -p $RETAILKEY_LOC

nwn_key_unpack.exe "${NWN_HOME}\data\nwn_base.key" "C:\Users\Cory\Desktop\Resources\Decompiled\nwn_base.key"
nwn_key_unpack.exe "${NWN_HOME}\data\nwn_retail.key" "C:\Users\Cory\Desktop\Resources\Decompiled\nwn_retail.key"

find "C:\Users\Cory\Desktop\Resources\Decompiled\nwn_base.key" -type f -exec sh -c 'mkdir -p ${1##*.} && mv $1 ${1##*.}/${1##*/} && echo ${1##*/}' _ {} \;
find "C:\Users\Cory\Desktop\Resources\Decompiled\nwn_retail.key" -type f -exec sh -c 'mkdir -p ${1##*.} && mv $1 ${1##*.}/${1##*/} && echo ${1##*/}' _ {} \;

rm $BASEKEY_LOC
rm $RETAILKEY_LOC
