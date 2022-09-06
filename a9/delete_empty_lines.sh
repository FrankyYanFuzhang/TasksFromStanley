#!/bin/bash

filename=$1
chmod -x $filename
sed -i '/^$/d' $filename